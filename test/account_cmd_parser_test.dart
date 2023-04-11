import 'package:account_cmd_parser/account_cmd_parser.dart';
import 'package:test/test.dart';

void main() {
  group('AccountArgParser', () {
    const validArguments = ['-e', '1@1.com', '-p', '1234'];
    const invalidArguments = ['-c', '1@1.com', '-p', '1234'];
    const helpArguments = ['-h'];

    late AccountArgParser accountArgParser;

    setUp(() {
      accountArgParser = AccountArgParser();
    });

    test('Parse valid command-line arguments', () {
      expect(accountArgParser.parse(arguments: validArguments),
          Account(email: '1@1.com', password: '1234'));
    });

    test('Parse invalid command-line arguments', () {
      expect(
          accountArgParser.parse(arguments: invalidArguments), Account.empty);
    });

    test('Parse help command-line arguments', () {
      expect(accountArgParser.parse(arguments: helpArguments), Account.empty);
    });
  });
}
