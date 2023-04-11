import 'package:equatable/equatable.dart';

class Account extends Equatable {
  const Account({required this.email, required this.password});

  final String email;
  final String password;

  static const empty = Account(email: '', password: '');

  bool get isEmpty => this == Account.empty;

  @override
  List<Object?> get props => [email, password];

  @override
  String toString() {
    return 'Account(email:$email, password:$password)';
  }
}
