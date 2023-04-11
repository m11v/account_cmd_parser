import 'package:account_cmd_parser/account_cmd_parser.dart';

void main(List<String> arguments) {
  final accountCmdParser = AccountArgParser();
  Account account = accountCmdParser.parse(arguments: arguments);
  print(account);
}
