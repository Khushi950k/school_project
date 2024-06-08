abstract class LoginEvents {}

class LoginUser extends LoginEvents {
  String username;
  String password;
  int department;

  LoginUser(
      {required this.password,
        required this.department,
        required this.username});
}
