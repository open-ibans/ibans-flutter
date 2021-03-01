import 'package:flutter_test/flutter_test.dart';
import 'package:ibans/models/models.dart';

void main() {
  test('Parse valid iban', () async {
    Iban iban = await Iban.parse("AO06004400006729503010102");
    expect(iban.country.name, "Angola");
  });
  test('Parse brazilian iban', () async {
    Iban iban = await Iban.parse("BR1500000000000010932840814P2");
    expect(iban.country.name, "Brazil");
  });
  test('Parse iban with invalid country code', () async {
    expect(await Iban.parse("AA1500000000000010932840814P2"), throwsException);
  });
  test('Parse iban with invalid check digit', () async {
    expect(await Iban.parse("AO0B004400006729503010102"), throwsException);
  });
  test('Parse iban with invalid reserved ', () async {
    expect(await Iban.parse("AO06104400006729503010102"), throwsException);
  });
  test('Parse iban with invalid bban', () async {
    expect(await Iban.parse("AO06004A00006729503010102"), throwsException);
  });
  test('Parse iban with invalid mod 97', () async {
    expect(await Iban.parse("AO06004400011729503010102"), throwsException);
  });
  test('Parse iban and get bank short name', () async {
    Iban iban = await Iban.parse("AO06004400006729503010102");
    expect(iban.bank.name, "BSOL");
  });
  test('Parse iban without bank name', () async {
    Iban iban = await Iban.parse("AO06004400006729503010102");
    expect(iban.bank.branch, "0000");
  });
}
