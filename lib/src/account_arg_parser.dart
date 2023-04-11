import 'dart:io';

import 'package:args/args.dart';
import 'package:account_cmd_parser/account_cmd_parser.dart';

class AccountArgParser {
  final ArgParser _argParser = ArgParser()
    ..addOption('email', abbr: 'e', help: 'Account email')
    ..addOption('password', abbr: 'p', help: 'Account password')
    ..addFlag('help',
        abbr: 'h',
        negatable: false,
        help: 'Display help information for account_arg_parser.');

  AccountArgParser();

  Account parse({List<String>? arguments}) {
    if (arguments == null) {
      return _listenInput();
    }

    try {
      final argResults = _argParser.parse(arguments);
      final String? cmdEmail = argResults['email'];
      final String? cmdPassword = argResults['password'];

      if (argResults['help']) {
        _printUsage();
        return Account.empty;
      } else if (cmdEmail != null &&
          cmdEmail.isNotEmpty &&
          cmdPassword != null &&
          cmdPassword.isNotEmpty) {
        return Account(
            email: argResults['email'], password: argResults['password']);
      } else {
        return _listenInput();
      }
    } on FormatException catch (e) {
      stdout.write(e.message);
      _printUsage();
      return Account.empty;
    } catch (e) {
      rethrow;
    }
  }

  void _printUsage() {
    stdout.write('''
**** HELP ****\n
Global options:
${_argParser.usage}
    ''');
  }

  Account _listenInput() {
    stdout.write('Enter your email:');
    final email = stdin.readLineSync() ?? '';
    stdout.write('Enter your password:');
    final password = stdin.readLineSync() ?? '';
    return Account(email: email, password: password);
  }
}
