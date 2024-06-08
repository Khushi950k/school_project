
import 'package:school_project/model/LoginModel.dart';

abstract class LoginStates {}

class LoginInitialState extends LoginStates {}

class LoginLoadingState extends LoginStates {}

class LoginLoadedState extends LoginStates {
  LoginModel loginModel;
  LoginLoadedState({required this.loginModel});
}

class LoginErrorState extends LoginStates {
  String errormsg;
  LoginErrorState({required this.errormsg});
}
