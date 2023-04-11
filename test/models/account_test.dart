import 'package:account_cmd_parser/account_cmd_parser.dart';
import 'package:test/test.dart';

void main() {
  group('Test Account model', () {
    test('supports value comparisons', () {
      expect(
        Account(email: '1@1.com', password: '1234'),
        Account(email: '1@1.com', password: '1234'),
      );

      expect(
        Account(email: '1@1.com', password: '1234'),
        isNot(equals(Account(email: '1@1.com', password: 'abcd'))),
      );

      expect(
        Account(email: '1@1.com', password: '1234'),
        isNot(equals(Account(email: '2@2.com', password: '1234'))),
      );
    });

    test('isEmpty returns true for empty account', () {
      expect(Account.empty.isEmpty, isTrue);
    });

    test('isEmpty returns false for non-empty account', () {
      expect(Account(email: '1@1.com', password: '1234').isEmpty, isFalse);
    });
  });
}
