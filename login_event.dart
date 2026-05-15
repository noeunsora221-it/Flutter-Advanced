abstract class LoginEvent {}

class LoginButtonPressed extends LoginEvent {
  final String username;
  final String password;
  final String department;

  LoginButtonPressed({required this.username, required this.password, required this.department});
}

