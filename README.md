# AccountCmdParser

[![Dart CI](https://github.com/m11v/account_cmd_parser/actions/workflows/account_cmd_parser.yml/badge.svg?branch=main)](https://github.com/m11v/account_cmd_parser/actions)
[![License](https://img.shields.io/github/license/m11v/account_cmd_parser)](https://github.com/m11v/account_cmd_parser/blob/main/LICENSE)
[![Pub](https://img.shields.io/pub/v/account_cmd_parser?label=Pub)](https://pub.dev/packages/account_cmd_parser)
[![Package publisher](https://img.shields.io/pub/publisher/account_cmd_parser.svg)](https://pub.dev/packages/account_cmd_parser/publisher)
## Features
This package is a wrapper of `ArgParser`:
* Parse command-line arguments to `Account(email, password)` model
* Hint and parse console inputs to `Account(email, password)` model if there are no runtime command-line arguments passed in
## Getting Started
Add the following to your `pubspec.yaml`:
```dart
dependencies:
  account_cmd_parser: any
```
## Usage
```dart
void main(List<String> arguments) {
  final accountCmdParser = AccountArgParser();
  Account account = accountCmdParser.parse(arguments: arguments);
}
```
