import 'dart:convert';
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:school_project/Bloc/Login_events.dart';
import 'package:school_project/Bloc/loginstates.dart';
import 'package:school_project/Screens/Student_detail.dart';
import 'package:school_project/model/LoginModel.dart';

class LoginBloc extends Bloc<LoginEvents, LoginStates> {
  LoginBloc() : super(LoginInitialState());

  login(String username, String password, int department) async {
    emit(LoginLoadingState());

    final response = await http.post(
        Uri.parse("https://school-alarm.com/demo/api/login/user_login"),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          "user_name": username,
          "password": password,
          "department": department
        }));

    if (response.statusCode == 200) {
      Map<String, dynamic> responsedata = jsonDecode(response.body);
       var key = responsedata;
       log("----------${key}");
      LoginModel loginModel = LoginModel.fromJson(responsedata);
      emit(LoginLoadedState(loginModel: loginModel));
    } else {
      emit(LoginErrorState(errormsg: response.statusCode.toString()));
    }

  }
}
