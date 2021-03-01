///
//  Generated code. Do not modify.
//  source: lib/specs.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class BankData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BankData', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'specs'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'code')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'shortName')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'swift')
    ..hasRequiredFields = false
  ;

  BankData._() : super();
  factory BankData({
    $core.String? code,
    $core.String? name,
    $core.String? shortName,
    $core.String? swift,
  }) {
    final _result = create();
    if (code != null) {
      _result.code = code;
    }
    if (name != null) {
      _result.name = name;
    }
    if (shortName != null) {
      _result.shortName = shortName;
    }
    if (swift != null) {
      _result.swift = swift;
    }
    return _result;
  }
  factory BankData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BankData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BankData clone() => BankData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BankData copyWith(void Function(BankData) updates) => super.copyWith((message) => updates(message as BankData)) as BankData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BankData create() => BankData._();
  BankData createEmptyInstance() => create();
  static $pb.PbList<BankData> createRepeated() => $pb.PbList<BankData>();
  @$core.pragma('dart2js:noInline')
  static BankData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BankData>(create);
  static BankData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get code => $_getSZ(0);
  @$pb.TagNumber(1)
  set code($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get shortName => $_getSZ(2);
  @$pb.TagNumber(3)
  set shortName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasShortName() => $_has(2);
  @$pb.TagNumber(3)
  void clearShortName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get swift => $_getSZ(3);
  @$pb.TagNumber(4)
  set swift($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSwift() => $_has(3);
  @$pb.TagNumber(4)
  void clearSwift() => clearField(4);
}

class Format extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Format', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'specs'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pattern')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'replacement')
    ..hasRequiredFields = false
  ;

  Format._() : super();
  factory Format({
    $core.String? pattern,
    $core.String? replacement,
  }) {
    final _result = create();
    if (pattern != null) {
      _result.pattern = pattern;
    }
    if (replacement != null) {
      _result.replacement = replacement;
    }
    return _result;
  }
  factory Format.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Format.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Format clone() => Format()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Format copyWith(void Function(Format) updates) => super.copyWith((message) => updates(message as Format)) as Format; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Format create() => Format._();
  Format createEmptyInstance() => create();
  static $pb.PbList<Format> createRepeated() => $pb.PbList<Format>();
  @$core.pragma('dart2js:noInline')
  static Format getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Format>(create);
  static Format? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get pattern => $_getSZ(0);
  @$pb.TagNumber(1)
  set pattern($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPattern() => $_has(0);
  @$pb.TagNumber(1)
  void clearPattern() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get replacement => $_getSZ(1);
  @$pb.TagNumber(2)
  set replacement($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasReplacement() => $_has(1);
  @$pb.TagNumber(2)
  void clearReplacement() => clearField(2);
}

class PatternData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PatternData', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'specs'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pattern')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data')
    ..hasRequiredFields = false
  ;

  PatternData._() : super();
  factory PatternData({
    $core.String? pattern,
    $core.String? data,
  }) {
    final _result = create();
    if (pattern != null) {
      _result.pattern = pattern;
    }
    if (data != null) {
      _result.data = data;
    }
    return _result;
  }
  factory PatternData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PatternData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PatternData clone() => PatternData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PatternData copyWith(void Function(PatternData) updates) => super.copyWith((message) => updates(message as PatternData)) as PatternData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PatternData create() => PatternData._();
  PatternData createEmptyInstance() => create();
  static $pb.PbList<PatternData> createRepeated() => $pb.PbList<PatternData>();
  @$core.pragma('dart2js:noInline')
  static PatternData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PatternData>(create);
  static PatternData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get pattern => $_getSZ(0);
  @$pb.TagNumber(1)
  set pattern($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPattern() => $_has(0);
  @$pb.TagNumber(1)
  void clearPattern() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get data => $_getSZ(1);
  @$pb.TagNumber(2)
  set data($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasData() => $_has(1);
  @$pb.TagNumber(2)
  void clearData() => clearField(2);
}

class IbanFormatSpec extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'IbanFormatSpec', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'specs'), createEmptyInstance: create)
    ..aOM<Format>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'print', subBuilder: Format.create)
    ..hasRequiredFields = false
  ;

  IbanFormatSpec._() : super();
  factory IbanFormatSpec({
    Format? print,
  }) {
    final _result = create();
    if (print != null) {
      _result.print = print;
    }
    return _result;
  }
  factory IbanFormatSpec.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IbanFormatSpec.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IbanFormatSpec clone() => IbanFormatSpec()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IbanFormatSpec copyWith(void Function(IbanFormatSpec) updates) => super.copyWith((message) => updates(message as IbanFormatSpec)) as IbanFormatSpec; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static IbanFormatSpec create() => IbanFormatSpec._();
  IbanFormatSpec createEmptyInstance() => create();
  static $pb.PbList<IbanFormatSpec> createRepeated() => $pb.PbList<IbanFormatSpec>();
  @$core.pragma('dart2js:noInline')
  static IbanFormatSpec getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IbanFormatSpec>(create);
  static IbanFormatSpec? _defaultInstance;

  @$pb.TagNumber(1)
  Format get print => $_getN(0);
  @$pb.TagNumber(1)
  set print(Format v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPrint() => $_has(0);
  @$pb.TagNumber(1)
  void clearPrint() => clearField(1);
  @$pb.TagNumber(1)
  Format ensurePrint() => $_ensure(0);
}

class IbanSpec extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'IbanSpec', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'specs'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'countryCode', $pb.PbFieldType.OU3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'countryName')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ibanPattern')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bbanPattern')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'countryCheckDigitsPattern')
    ..aOM<PatternData>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reservedFields', subBuilder: PatternData.create)
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'length', $pb.PbFieldType.OU3)
    ..aOM<IbanFormatSpec>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'formats', subBuilder: IbanFormatSpec.create)
    ..a<$core.int>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'checkDigit', $pb.PbFieldType.OU3)
    ..a<$core.int>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bankCode', $pb.PbFieldType.OU3)
    ..a<$core.int>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountNumber', $pb.PbFieldType.OU3)
    ..a<$core.int>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'branchCode', $pb.PbFieldType.OU3)
    ..a<$core.int>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountType', $pb.PbFieldType.OU3)
    ..a<$core.int>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountHolderNumber', $pb.PbFieldType.OU3)
    ..a<$core.int>(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'balanceAccountNumber', $pb.PbFieldType.OU3)
    ..a<$core.int>(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'currencyCode', $pb.PbFieldType.OU3)
    ..a<$core.int>(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ownerAccountNumber', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  IbanSpec._() : super();
  factory IbanSpec({
    $core.int? countryCode,
    $core.String? countryName,
    $core.String? ibanPattern,
    $core.String? bbanPattern,
    $core.String? countryCheckDigitsPattern,
    PatternData? reservedFields,
    $core.int? length,
    IbanFormatSpec? formats,
    $core.int? checkDigit,
    $core.int? bankCode,
    $core.int? accountNumber,
    $core.int? branchCode,
    $core.int? accountType,
    $core.int? accountHolderNumber,
    $core.int? balanceAccountNumber,
    $core.int? currencyCode,
    $core.int? ownerAccountNumber,
  }) {
    final _result = create();
    if (countryCode != null) {
      _result.countryCode = countryCode;
    }
    if (countryName != null) {
      _result.countryName = countryName;
    }
    if (ibanPattern != null) {
      _result.ibanPattern = ibanPattern;
    }
    if (bbanPattern != null) {
      _result.bbanPattern = bbanPattern;
    }
    if (countryCheckDigitsPattern != null) {
      _result.countryCheckDigitsPattern = countryCheckDigitsPattern;
    }
    if (reservedFields != null) {
      _result.reservedFields = reservedFields;
    }
    if (length != null) {
      _result.length = length;
    }
    if (formats != null) {
      _result.formats = formats;
    }
    if (checkDigit != null) {
      _result.checkDigit = checkDigit;
    }
    if (bankCode != null) {
      _result.bankCode = bankCode;
    }
    if (accountNumber != null) {
      _result.accountNumber = accountNumber;
    }
    if (branchCode != null) {
      _result.branchCode = branchCode;
    }
    if (accountType != null) {
      _result.accountType = accountType;
    }
    if (accountHolderNumber != null) {
      _result.accountHolderNumber = accountHolderNumber;
    }
    if (balanceAccountNumber != null) {
      _result.balanceAccountNumber = balanceAccountNumber;
    }
    if (currencyCode != null) {
      _result.currencyCode = currencyCode;
    }
    if (ownerAccountNumber != null) {
      _result.ownerAccountNumber = ownerAccountNumber;
    }
    return _result;
  }
  factory IbanSpec.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IbanSpec.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IbanSpec clone() => IbanSpec()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IbanSpec copyWith(void Function(IbanSpec) updates) => super.copyWith((message) => updates(message as IbanSpec)) as IbanSpec; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static IbanSpec create() => IbanSpec._();
  IbanSpec createEmptyInstance() => create();
  static $pb.PbList<IbanSpec> createRepeated() => $pb.PbList<IbanSpec>();
  @$core.pragma('dart2js:noInline')
  static IbanSpec getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IbanSpec>(create);
  static IbanSpec? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get countryCode => $_getIZ(0);
  @$pb.TagNumber(1)
  set countryCode($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCountryCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCountryCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get countryName => $_getSZ(1);
  @$pb.TagNumber(2)
  set countryName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCountryName() => $_has(1);
  @$pb.TagNumber(2)
  void clearCountryName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get ibanPattern => $_getSZ(2);
  @$pb.TagNumber(3)
  set ibanPattern($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIbanPattern() => $_has(2);
  @$pb.TagNumber(3)
  void clearIbanPattern() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get bbanPattern => $_getSZ(3);
  @$pb.TagNumber(4)
  set bbanPattern($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBbanPattern() => $_has(3);
  @$pb.TagNumber(4)
  void clearBbanPattern() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get countryCheckDigitsPattern => $_getSZ(4);
  @$pb.TagNumber(5)
  set countryCheckDigitsPattern($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCountryCheckDigitsPattern() => $_has(4);
  @$pb.TagNumber(5)
  void clearCountryCheckDigitsPattern() => clearField(5);

  @$pb.TagNumber(6)
  PatternData get reservedFields => $_getN(5);
  @$pb.TagNumber(6)
  set reservedFields(PatternData v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasReservedFields() => $_has(5);
  @$pb.TagNumber(6)
  void clearReservedFields() => clearField(6);
  @$pb.TagNumber(6)
  PatternData ensureReservedFields() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.int get length => $_getIZ(6);
  @$pb.TagNumber(7)
  set length($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasLength() => $_has(6);
  @$pb.TagNumber(7)
  void clearLength() => clearField(7);

  @$pb.TagNumber(8)
  IbanFormatSpec get formats => $_getN(7);
  @$pb.TagNumber(8)
  set formats(IbanFormatSpec v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasFormats() => $_has(7);
  @$pb.TagNumber(8)
  void clearFormats() => clearField(8);
  @$pb.TagNumber(8)
  IbanFormatSpec ensureFormats() => $_ensure(7);

  @$pb.TagNumber(9)
  $core.int get checkDigit => $_getIZ(8);
  @$pb.TagNumber(9)
  set checkDigit($core.int v) { $_setUnsignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasCheckDigit() => $_has(8);
  @$pb.TagNumber(9)
  void clearCheckDigit() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get bankCode => $_getIZ(9);
  @$pb.TagNumber(10)
  set bankCode($core.int v) { $_setUnsignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasBankCode() => $_has(9);
  @$pb.TagNumber(10)
  void clearBankCode() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get accountNumber => $_getIZ(10);
  @$pb.TagNumber(11)
  set accountNumber($core.int v) { $_setUnsignedInt32(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasAccountNumber() => $_has(10);
  @$pb.TagNumber(11)
  void clearAccountNumber() => clearField(11);

  @$pb.TagNumber(12)
  $core.int get branchCode => $_getIZ(11);
  @$pb.TagNumber(12)
  set branchCode($core.int v) { $_setUnsignedInt32(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasBranchCode() => $_has(11);
  @$pb.TagNumber(12)
  void clearBranchCode() => clearField(12);

  @$pb.TagNumber(13)
  $core.int get accountType => $_getIZ(12);
  @$pb.TagNumber(13)
  set accountType($core.int v) { $_setUnsignedInt32(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasAccountType() => $_has(12);
  @$pb.TagNumber(13)
  void clearAccountType() => clearField(13);

  @$pb.TagNumber(14)
  $core.int get accountHolderNumber => $_getIZ(13);
  @$pb.TagNumber(14)
  set accountHolderNumber($core.int v) { $_setUnsignedInt32(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasAccountHolderNumber() => $_has(13);
  @$pb.TagNumber(14)
  void clearAccountHolderNumber() => clearField(14);

  @$pb.TagNumber(15)
  $core.int get balanceAccountNumber => $_getIZ(14);
  @$pb.TagNumber(15)
  set balanceAccountNumber($core.int v) { $_setUnsignedInt32(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasBalanceAccountNumber() => $_has(14);
  @$pb.TagNumber(15)
  void clearBalanceAccountNumber() => clearField(15);

  @$pb.TagNumber(16)
  $core.int get currencyCode => $_getIZ(15);
  @$pb.TagNumber(16)
  set currencyCode($core.int v) { $_setUnsignedInt32(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasCurrencyCode() => $_has(15);
  @$pb.TagNumber(16)
  void clearCurrencyCode() => clearField(16);

  @$pb.TagNumber(17)
  $core.int get ownerAccountNumber => $_getIZ(16);
  @$pb.TagNumber(17)
  set ownerAccountNumber($core.int v) { $_setUnsignedInt32(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasOwnerAccountNumber() => $_has(16);
  @$pb.TagNumber(17)
  void clearOwnerAccountNumber() => clearField(17);
}

class IbansSpecs extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'IbansSpecs', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'specs'), createEmptyInstance: create)
    ..m<$core.String, IbanSpec>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'specs', entryClassName: 'IbansSpecs.SpecsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: IbanSpec.create, packageName: const $pb.PackageName('specs'))
    ..hasRequiredFields = false
  ;

  IbansSpecs._() : super();
  factory IbansSpecs({
    $core.Map<$core.String, IbanSpec>? specs,
  }) {
    final _result = create();
    if (specs != null) {
      _result.specs.addAll(specs);
    }
    return _result;
  }
  factory IbansSpecs.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IbansSpecs.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IbansSpecs clone() => IbansSpecs()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IbansSpecs copyWith(void Function(IbansSpecs) updates) => super.copyWith((message) => updates(message as IbansSpecs)) as IbansSpecs; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static IbansSpecs create() => IbansSpecs._();
  IbansSpecs createEmptyInstance() => create();
  static $pb.PbList<IbansSpecs> createRepeated() => $pb.PbList<IbansSpecs>();
  @$core.pragma('dart2js:noInline')
  static IbansSpecs getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IbansSpecs>(create);
  static IbansSpecs? _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, IbanSpec> get specs => $_getMap(0);
}

class BanksData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BanksData', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'specs'), createEmptyInstance: create)
    ..m<$core.String, BankData>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'banks', entryClassName: 'BanksData.BanksEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: BankData.create, packageName: const $pb.PackageName('specs'))
    ..hasRequiredFields = false
  ;

  BanksData._() : super();
  factory BanksData({
    $core.Map<$core.String, BankData>? banks,
  }) {
    final _result = create();
    if (banks != null) {
      _result.banks.addAll(banks);
    }
    return _result;
  }
  factory BanksData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BanksData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BanksData clone() => BanksData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BanksData copyWith(void Function(BanksData) updates) => super.copyWith((message) => updates(message as BanksData)) as BanksData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BanksData create() => BanksData._();
  BanksData createEmptyInstance() => create();
  static $pb.PbList<BanksData> createRepeated() => $pb.PbList<BanksData>();
  @$core.pragma('dart2js:noInline')
  static BanksData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BanksData>(create);
  static BanksData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, BankData> get banks => $_getMap(0);
}

