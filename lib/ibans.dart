import 'dart:async';
import 'dart:typed_data';

import 'package:flutter/services.dart' show rootBundle;
import 'package:ibans/specs.pb.dart';

import 'exceptions.dart';
import 'models/models.dart';

class Ibans {
  /// Returns a Iban object
  ///
  /// Throws [ValueException] if an invalid [ibanString] is provided
  /// [InvalidBbanException] if Basic Bank Account Number is invalid
  /// [InvalidCheckDigitException] if the check digit is invalid
  /// [InvalidReservedValues] if a constant value was not found
  /// [InvalidMod97Exception] if mod 97 validation result is invalid
  ///
  /// ```dart
  /// var iban = parse('AO06005500009209313310152');
  /// print(iban.country.name) // 'Angola';
  /// ```
  static Future<Iban> parse(String ibanString) async {
    ibanString = ibanString.replaceAll(" ", "").toUpperCase();
    var countryCode = ibanString.substring(0, 2);
    IbanSpec? spec = await _getIbanSpec(countryCode);

    if (spec == null) throw ValueException("This country doesn't support iban");

    validate(ibanString, spec);

    var ibanRegex = RegExp(spec.ibanPattern);
    var match = ibanRegex.firstMatch(ibanString)!;
    String bankCode = match.group(spec.bankCode)!;
    String checkDigit = match.group(spec.checkDigit)!;
    String accountNumber = match.group(spec.accountNumber)!;
    String? branchCode = _getMatchGroup(match, spec.branchCode);
    String? accountType = _getMatchGroup(match, spec.accountType);
    String? accountHolderNumber =
        _getMatchGroup(match, spec.accountHolderNumber);
    String? balanceAccountNumber =
        _getMatchGroup(match, spec.balanceAccountNumber);
    String? currencyCode = _getMatchGroup(match, spec.currencyCode);
    String? ownerAccountNumber = _getMatchGroup(match, spec.ownerAccountNumber);

    var account = Account(accountNumber, accountType, accountHolderNumber,
        currencyCode, balanceAccountNumber, ownerAccountNumber);

    var country = Country(countryCode, spec.countryName);
    var bank = await _getBank(countryCode, bankCode, branchCode);
    var iban = Iban(spec.formats, bank, country, account, checkDigit,
        ibanString.substring(4));
    return iban;
  }

  /// Get match group string
  ///
  /// Return the group string given match or group
  static String? _getMatchGroup(Match match, int? group) {
    if (group == null || group == 0) {
      return null;
    } else {
      return match.group(group);
    }
  }

  /// Validates an IBAN String
  ///
  /// Returns true if iban is valid and false otherwise
  static Future<bool> isValid(String ibanString) async {
    var countryCode = ibanString.substring(0, 2);
    IbanSpec? spec = await _getIbanSpec(countryCode);
    bool isValid = spec != null;

    try {
      validate(ibanString, spec!);
    } catch (ParseException) {
      isValid = false;
    }

    return isValid;
  }

  /// validate an iban
  ///
  /// Throws [ValueException] if an invalid [ibanString] is provided
  /// [InvalidBbanException] if Basic Bank Account Number is invalid
  /// [InvalidCheckDigitException] if the check digit is invalid
  /// [InvalidReservedValues] if a constant value was not found
  /// [InvalidMod97Exception] if mod 97 validation result is invalid
  static Future validate(String iban, IbanSpec spec) async {
    var ibanMatch = RegExp(spec.ibanPattern).firstMatch(iban);
    var bbanMatch = RegExp(spec.bbanPattern).firstMatch(iban);
    if (spec.length != iban.length) {
      throw ValueException('Invalid Iban length');
    }
    if (bbanMatch == null) {
      var field = iban.substring(4);
      throw InvalidBbanException('Invalid Basic Bank Account Number', field);
    }
    if (ibanMatch![spec.checkDigit] == null) {
      var field = iban.substring(2, 2);
      throw InvalidCheckDigitException('Invalid Check Digit', field);
    }
    // ignore: unnecessary_null_comparison
    if (spec.reservedFields != null) {
      var reservedFieldsMatch =
          RegExp(spec.reservedFields.pattern).firstMatch(iban);
      if (reservedFieldsMatch == null) {
        throw InvalidReservedValues("Expected reserved values where not found");
      }
    }
    if (_calculateMod97(iban) != 1) {
      throw InvalidMod97Exception('Invalid MOD 97 Operation Result');
    }
  }

  /// Performs a MOD 97 Operation
  ///
  /// Return an int as the result
  static int _calculateMod97(String iban) {
    /// send the first 4 letters to the back
    iban = iban.substring(4) + iban.substring(0, 4);
    iban = iban.replaceAllMapped(
        RegExp(r'([A-Z]{1})'), (Match m) => '${m[0]!.codeUnits[0] - 55}');

    var ibanInt = BigInt.parse(iban);
    var remainder = ibanInt.remainder(BigInt.from(97)).toInt();
    return remainder;
  }

  /// Return an Iban specification for that country
  ///
  /// Returns null if country doesn't support iban
  /// Throws [ValueException] if an invalid [countryCode] is provided
  static Future<IbanSpec?> _getIbanSpec(String countryCode) async {
    String filepath = "packages/ibans/assets/data/ibans/${countryCode[0]}.dat";
    Uint8List bytes;
    try {
      bytes = await _getBytes(filepath);
    } catch (ResourceNotFound) {
      throw ValueException("Iban spec for $countryCode was not found");
    }
    IbansSpecs ibans = IbansSpecs.fromBuffer(bytes);

    bool hasKey = ibans.specs.containsKey(countryCode);

    if (hasKey == false) {
      throw ValueException("Iban spec for $countryCode was not found");
    }

    return ibans.specs[countryCode]!;
  }

  /// Return The bank associated to the iban
  ///
  /// Returns null if bank not found or info not available
  /// Throws [ValueException] if there is no information is available for the bank with [countryCode] and [bankCode]
  static Future<Bank> _getBank(
      String countryCode, String bankCode, String? branchCode) async {
    String filepath = "packages/ibans/assets/data/banks/$countryCode.dat";
    late var bytes;
    try {
      bytes = await _getBytes(filepath);
    } on ResourceNotFound {
      return Bank(bankCode, branch: branchCode);
    }

    var banks = BanksData.fromBuffer(bytes);
    var hasKey = banks.banks.containsKey(countryCode + bankCode);

    if (hasKey) {
      BankData bankData = banks.banks[countryCode + bankCode]!;
      return Bank(bankData.code,
          name: bankData.name,
          shortName: bankData.shortName,
          swift: bankData.swift,
          branch: branchCode);
    } else {
      return Bank(bankCode, branch: branchCode);
    }
  }

  /// Loads a resource as Uint8List
  ///
  /// Returns a Uint8List
  static Future<Uint8List> _getBytes(String path) async {
    ByteData data;
    try {
      data = await rootBundle.load(path);
    } catch (Exception) {
      throw ResourceNotFound("Unable to load asset \"$path\"");
    }
    Uint8List resource = data.buffer.asUint8List();

    return resource;
  }
}
