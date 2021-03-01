///
//  Generated code. Do not modify.
//  source: lib/specs.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use bankDataDescriptor instead')
const BankData$json = const {
  '1': 'BankData',
  '2': const [
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'short_name', '3': 3, '4': 1, '5': 9, '10': 'shortName'},
    const {'1': 'code', '3': 1, '4': 1, '5': 9, '10': 'code'},
    const {'1': 'swift', '3': 4, '4': 1, '5': 9, '10': 'swift'},
  ],
};

/// Descriptor for `BankData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bankDataDescriptor = $convert.base64Decode('CghCYW5rRGF0YRISCgRuYW1lGAIgASgJUgRuYW1lEh0KCnNob3J0X25hbWUYAyABKAlSCXNob3J0TmFtZRISCgRjb2RlGAEgASgJUgRjb2RlEhQKBXN3aWZ0GAQgASgJUgVzd2lmdA==');
@$core.Deprecated('Use formatDescriptor instead')
const Format$json = const {
  '1': 'Format',
  '2': const [
    const {'1': 'pattern', '3': 1, '4': 1, '5': 9, '10': 'pattern'},
    const {'1': 'replacement', '3': 2, '4': 1, '5': 9, '10': 'replacement'},
  ],
};

/// Descriptor for `Format`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List formatDescriptor = $convert.base64Decode('CgZGb3JtYXQSGAoHcGF0dGVybhgBIAEoCVIHcGF0dGVybhIgCgtyZXBsYWNlbWVudBgCIAEoCVILcmVwbGFjZW1lbnQ=');
@$core.Deprecated('Use patternDataDescriptor instead')
const PatternData$json = const {
  '1': 'PatternData',
  '2': const [
    const {'1': 'pattern', '3': 1, '4': 1, '5': 9, '10': 'pattern'},
    const {'1': 'data', '3': 2, '4': 1, '5': 9, '10': 'data'},
  ],
};

/// Descriptor for `PatternData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List patternDataDescriptor = $convert.base64Decode('CgtQYXR0ZXJuRGF0YRIYCgdwYXR0ZXJuGAEgASgJUgdwYXR0ZXJuEhIKBGRhdGEYAiABKAlSBGRhdGE=');
@$core.Deprecated('Use ibanFormatSpecDescriptor instead')
const IbanFormatSpec$json = const {
  '1': 'IbanFormatSpec',
  '2': const [
    const {'1': 'print', '3': 1, '4': 1, '5': 11, '6': '.specs.Format', '10': 'print'},
  ],
};

/// Descriptor for `IbanFormatSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ibanFormatSpecDescriptor = $convert.base64Decode('Cg5JYmFuRm9ybWF0U3BlYxIjCgVwcmludBgBIAEoCzINLnNwZWNzLkZvcm1hdFIFcHJpbnQ=');
@$core.Deprecated('Use ibanSpecDescriptor instead')
const IbanSpec$json = const {
  '1': 'IbanSpec',
  '2': const [
    const {'1': 'country_code', '3': 1, '4': 1, '5': 13, '10': 'countryCode'},
    const {'1': 'country_name', '3': 2, '4': 1, '5': 9, '10': 'countryName'},
    const {'1': 'iban_pattern', '3': 3, '4': 1, '5': 9, '10': 'ibanPattern'},
    const {'1': 'bban_pattern', '3': 4, '4': 1, '5': 9, '10': 'bbanPattern'},
    const {'1': 'country_check_digits_pattern', '3': 5, '4': 1, '5': 9, '10': 'countryCheckDigitsPattern'},
    const {'1': 'reserved_fields', '3': 6, '4': 1, '5': 11, '6': '.specs.PatternData', '10': 'reservedFields'},
    const {'1': 'length', '3': 7, '4': 1, '5': 13, '10': 'length'},
    const {'1': 'formats', '3': 8, '4': 1, '5': 11, '6': '.specs.IbanFormatSpec', '10': 'formats'},
    const {'1': 'check_digit', '3': 9, '4': 1, '5': 13, '10': 'checkDigit'},
    const {'1': 'bank_code', '3': 10, '4': 1, '5': 13, '10': 'bankCode'},
    const {'1': 'account_number', '3': 11, '4': 1, '5': 13, '10': 'accountNumber'},
    const {'1': 'branch_code', '3': 12, '4': 1, '5': 13, '10': 'branchCode'},
    const {'1': 'account_type', '3': 13, '4': 1, '5': 13, '10': 'accountType'},
    const {'1': 'account_holder_number', '3': 14, '4': 1, '5': 13, '10': 'accountHolderNumber'},
    const {'1': 'balance_account_number', '3': 15, '4': 1, '5': 13, '10': 'balanceAccountNumber'},
    const {'1': 'currency_code', '3': 16, '4': 1, '5': 13, '10': 'currencyCode'},
    const {'1': 'owner_account_number', '3': 17, '4': 1, '5': 13, '10': 'ownerAccountNumber'},
  ],
};

/// Descriptor for `IbanSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ibanSpecDescriptor = $convert.base64Decode('CghJYmFuU3BlYxIhCgxjb3VudHJ5X2NvZGUYASABKA1SC2NvdW50cnlDb2RlEiEKDGNvdW50cnlfbmFtZRgCIAEoCVILY291bnRyeU5hbWUSIQoMaWJhbl9wYXR0ZXJuGAMgASgJUgtpYmFuUGF0dGVybhIhCgxiYmFuX3BhdHRlcm4YBCABKAlSC2JiYW5QYXR0ZXJuEj8KHGNvdW50cnlfY2hlY2tfZGlnaXRzX3BhdHRlcm4YBSABKAlSGWNvdW50cnlDaGVja0RpZ2l0c1BhdHRlcm4SOwoPcmVzZXJ2ZWRfZmllbGRzGAYgASgLMhIuc3BlY3MuUGF0dGVybkRhdGFSDnJlc2VydmVkRmllbGRzEhYKBmxlbmd0aBgHIAEoDVIGbGVuZ3RoEi8KB2Zvcm1hdHMYCCABKAsyFS5zcGVjcy5JYmFuRm9ybWF0U3BlY1IHZm9ybWF0cxIfCgtjaGVja19kaWdpdBgJIAEoDVIKY2hlY2tEaWdpdBIbCgliYW5rX2NvZGUYCiABKA1SCGJhbmtDb2RlEiUKDmFjY291bnRfbnVtYmVyGAsgASgNUg1hY2NvdW50TnVtYmVyEh8KC2JyYW5jaF9jb2RlGAwgASgNUgpicmFuY2hDb2RlEiEKDGFjY291bnRfdHlwZRgNIAEoDVILYWNjb3VudFR5cGUSMgoVYWNjb3VudF9ob2xkZXJfbnVtYmVyGA4gASgNUhNhY2NvdW50SG9sZGVyTnVtYmVyEjQKFmJhbGFuY2VfYWNjb3VudF9udW1iZXIYDyABKA1SFGJhbGFuY2VBY2NvdW50TnVtYmVyEiMKDWN1cnJlbmN5X2NvZGUYECABKA1SDGN1cnJlbmN5Q29kZRIwChRvd25lcl9hY2NvdW50X251bWJlchgRIAEoDVISb3duZXJBY2NvdW50TnVtYmVy');
@$core.Deprecated('Use ibansSpecsDescriptor instead')
const IbansSpecs$json = const {
  '1': 'IbansSpecs',
  '2': const [
    const {'1': 'specs', '3': 1, '4': 3, '5': 11, '6': '.specs.IbansSpecs.SpecsEntry', '10': 'specs'},
  ],
  '3': const [IbansSpecs_SpecsEntry$json],
};

@$core.Deprecated('Use ibansSpecsDescriptor instead')
const IbansSpecs_SpecsEntry$json = const {
  '1': 'SpecsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.specs.IbanSpec', '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `IbansSpecs`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ibansSpecsDescriptor = $convert.base64Decode('CgpJYmFuc1NwZWNzEjIKBXNwZWNzGAEgAygLMhwuc3BlY3MuSWJhbnNTcGVjcy5TcGVjc0VudHJ5UgVzcGVjcxpJCgpTcGVjc0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EiUKBXZhbHVlGAIgASgLMg8uc3BlY3MuSWJhblNwZWNSBXZhbHVlOgI4AQ==');
@$core.Deprecated('Use banksDataDescriptor instead')
const BanksData$json = const {
  '1': 'BanksData',
  '2': const [
    const {'1': 'banks', '3': 1, '4': 3, '5': 11, '6': '.specs.BanksData.BanksEntry', '10': 'banks'},
  ],
  '3': const [BanksData_BanksEntry$json],
};

@$core.Deprecated('Use banksDataDescriptor instead')
const BanksData_BanksEntry$json = const {
  '1': 'BanksEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.specs.BankData', '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `BanksData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List banksDataDescriptor = $convert.base64Decode('CglCYW5rc0RhdGESMQoFYmFua3MYASADKAsyGy5zcGVjcy5CYW5rc0RhdGEuQmFua3NFbnRyeVIFYmFua3MaSQoKQmFua3NFbnRyeRIQCgNrZXkYASABKAlSA2tleRIlCgV2YWx1ZRgCIAEoCzIPLnNwZWNzLkJhbmtEYXRhUgV2YWx1ZToCOAE=');
