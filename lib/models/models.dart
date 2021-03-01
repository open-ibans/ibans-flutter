import '../ibans.dart';
import '../specs.pb.dart';

/// Represents the iban formats
enum IbanFormat { print, electronic, print_hidden, electronic_hidden }

/// Represents a country
class Country {
  /// A alpha 2 country code
  String _code;

  /// The country name
  String _name;

  String get code => _code;

  String get name => _name;

  Country(this._code, this._name);
}

/// Represents an account
class Account {
  /// Account number
  late String _number;

  /// The account type
  String? _type;

  /// The account holder identification
  String? _holder;

  /// The currency code
  String? _currencyCode;

  /// The balance account number
  String? _balanceAccount;

  /// differentiates between multiple account with same [number]
  String? _ownerAccountNumber;

  String get number => _number;

  String? get type => _type;

  String? get holder => _holder;

  String? get currencyCode => _currencyCode;

  String? get balanceAccount => _balanceAccount;

  String? get ownerAccountNumber => _ownerAccountNumber;

  Account(this._number,
      [type,
      holder,
      this._currencyCode,
      this._balanceAccount,
      String? ownerAccountNumber]);

  Account.number(this._number);
}

/// Represents a bank associated
class Bank {
  /// Bank name
  String? _name;

  /// Bank national number
  late String _code;

  /// Bank branch
  String? _branch;

  /// Bank short name or initials
  String? _shortName;

  /// Bank Swift/BIC code
  String? _swift;

  String? get name => _name;

  String get code => _code;

  String? get shortName => _shortName;

  String? get swift => _swift;

  String? get branch => _branch;

  Bank(this._code,
      {String? name, String? branch, String? shortName, String? swift})
      : _name = name,
        _branch = branch,
        _shortName = shortName,
        _swift = swift;
}

/// Represents an iban
class Iban {
  String _iban;

  /// the iban format specific to that country by providing the index for the spaces
  IbanFormatSpec _formats;

  /// The bank associated to the iban
  Bank _bank;

  /// The country
  Country _country;

  /// The account Data
  Account _account;

  /// the check digit
  String _checkDigit;

  /// The Basic Bank Account Number (BBAN)
  String _basicBankAccountNumber;

  IbanFormatSpec get formats => _formats;
  String get iban => _iban;
  Bank get bank => _bank;
  Country get country => _country;
  Account get account => _account;
  String get checkDigit => _checkDigit;
  String get basicBankAccountNumber => _basicBankAccountNumber;

  Iban(this._formats, this._bank, this._country, this._account,
      this._checkDigit, this._basicBankAccountNumber)
      : this._iban = _country.code + _checkDigit + _basicBankAccountNumber;

  /// Formats IBAN String
  ///
  /// ```dart
  /// var iban = Iban.parse('AO123243546575435432312')
  /// print(iban.format(IbanFormat.print); // "AO06 1234 1234 1234 12"
  /// ```
  String format(IbanFormat format) {
    String iban = _country.code + _checkDigit + _basicBankAccountNumber;
    int bbanSize = this.basicBankAccountNumber.length;
    String bban = "*******************************".substring(0, bbanSize);

    if (format == IbanFormat.print_hidden ||
        format == IbanFormat.electronic_hidden) {
      iban = iban + bban;
    } else {
      iban = iban + basicBankAccountNumber;
    }

    if (format == IbanFormat.print_hidden || format == IbanFormat.print) {
      var regex = RegExp(this._formats.print.pattern);
      iban = iban.replaceAll(regex, this._formats.print.replacement);
    }
    return iban;
  }

  /// Parse Iban from string
  ///
  /// Returns an [Iban] object, throws [ValueException] if an invalid [iban] is provided
  /// [InvalidBbanException] if Basic Bank Account Number is invalid
  /// [InvalidCheckDigitException] if the check digit is invalid
  /// [UnexpectedConstantValue] if a constant value was not found
  /// [InvalidMod97Exception] if mod 97 validation result is invalid
  ///
  /// ```dart
  /// var iban = Iban.parse('AO123243546575435432312')
  ///
  /// print(iban.country.name); // "Angola"
  /// print(iban.bank.name); // "Banco Africano de Investimento"
  /// print(iban.bank.short_name); // "BAI"
  /// ```
  static Future<Iban> parse(String iban) async {
    return await Ibans.parse(iban);
  }

  /// Parse Iban from String
  ///
  /// Returns null if parsing fails instead of throwing an exception
  ///
  /// ```dart
  /// var iban = Iban.tryParse('AO123243546575435432312')
  ///
  /// print(iban.country.name); // "Angola"
  /// print(iban.bank.name); // "Banco Africano de Investimento"
  /// print(iban.bank.short_name); // "BAI"
  /// ```
  static Future<Iban?> tryParse(String iban) async {
    try {
      return await Iban.parse(iban);
    } catch (ParseIbanException) {
      return null;
    }
  }

  /// Checks if a string is a valid iban
  ///
  /// Return true if iban is valid and false otherwise
  static Future<bool> isValid(String iban) async {
    return await Ibans.isValid(iban);
  }
}
