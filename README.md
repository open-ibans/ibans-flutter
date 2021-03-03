# ibans

<p align="center">
  <a href="https://pub.dartlang.org/packages/ibans">
    <img src="https://img.shields.io/pub/v/ibans.svg" alt="Pub" />
  </a>
  <a href="https://opensource.org/licenses/MIT">
    <img src="https://img.shields.io/badge/License-MIT-blue.svg" alt="License: MIT" />
  </a>
</p>

A simple yet powerful package for validating parsing ibans

# Features

- Validating IBAN
    - Checks if the country supports iban
    - Validate the IBAN string size for the specific country
    - Validate the check code for countries with fix check code
    - Validate the structure of BBAN for the specific country
    - Validate the entire IBAN using MOD 97 operations described by [ISO-7064](https://en.wikipedia.org/wiki/ISO_7064)

- Parsing IBAN will get the following info
    - Country name
    - Country Alpha2 code
    - Check Code
    - Basic Bank Account Number
    - (If Available) Bank Code
    - (If Available) Account number
    - (If Available) SWIFT
    - (If Available) bank initials
    - (If Available) Bank Name
    - (If Available) Branch code
    - (If Available) Account Type
    - (If Available) Account Holder
    - (If Available) Balance Account Number
    - (If Available) Currency Code


# Usage

Using the package is as simple as shown below

## Parse IBAN

| Angola | Brazil | Iceland |
| --- | --- | --- |
| ![Angola](https://raw.github.com/chulwoo-park/timelines/main/screenshots/timeline_status.gif "Angola Iban") | ![Angola](https://raw.github.com/chulwoo-park/timelines/main/screenshots/timeline_status.gif "Angola Iban") | ![Angola](https://raw.github.com/chulwoo-park/timelines/main/screenshots/timeline_status.gif "Angola Iban") |

to parse an iban just call
```dart

    import 'package:ibans/ibans.dart';
    import 'package:ibans/src/models.dart';

    main() {
      var iban = Iban.parse('AO06005500009209313310152');
      print(iban.country.code); // AO
      print(iban.country.name); // Angola
      print(iban.bank.name); // Banco Angolano de Investimentos
      print(iban.bank.number); // 055
    }
```

# Contributing

Contributions are welcome, please open an issue or send a PR.
Please read our Contributing and code of conduct

# License

This project is available under MIT License