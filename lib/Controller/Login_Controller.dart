import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:school_project/Screens/Login_page.dart';
import 'package:school_project/Screens/Student_detail.dart';
import 'package:school_project/model/Login_Singelton.dart';
import 'package:school_project/model/User_Data_List.dart';
import 'package:school_project/model/User_Login_Model.dart';
import 'package:shared_preferences/shared_preferences.dart';


class LoginController extends GetxController{
  var isDataSubmitting = false.obs;
  var isDataReadingCompleted = false.obs;
  loginWithDetail(String user_name, String password)
  async {
     print(user_name+"demo steing");
    isDataSubmitting.value = true;

    Map<String, dynamic> dataBody = {
      'user_name': user_name,
      'password': password,
      'department': '3',
    };

    var dataToSend = json.encode(dataBody);
    print(dataToSend);
    var response =
    await http.post( Uri.parse("http://school-alarm.com/demo/api/login/user_login"), body: dataToSend);

    print(response.body);
    if (response.statusCode == 200) {
      Map<String, dynamic> responseData = jsonDecode(response.body);
      isDataSubmitting.value = false;
      SharedPreferences preferences = await SharedPreferences.getInstance();
      preferences.setBool("isLoggedin", true);
      Get.off(() => LoginPage());
      print(responseData);
         UserDataList.user_name =
       UserDataModel.fromMap(responseData).user_name;
         UserDataList.password =
         UserDataModel.fromMap(responseData).password;
         UserDataList.department =
         UserDataModel.fromMap(responseData).department;

      UserDataList.user_name = responseData['user_name'];
      UserDataList.password = responseData['password'];
      UserDataList.department = responseData['3'];

  LoginSingelton.setUserName(responseData['user_name']);
 LoginSingelton.setUserPassword(responseData['password']);
   LoginSingelton.setUserDepartment(responseData['3']);

      isDataReadingCompleted.value = true;
      print(isDataReadingCompleted);
      //Get.to(UserDashboard());
      Get.to(StudentDetail());

    } else {
      isDataSubmitting.value = false;
      Get.snackbar(
        "Login Failed",
        "Invalid User Id / Password",
        backgroundColor: Colors.black,
        snackPosition: SnackPosition.BOTTOM,
        borderRadius: 10,
        borderWidth: 2,
      );
    }
  }

  // Future<void> logout()  async {
  //   SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  //   sharedPreferences.setBool("isLoggedin", false);
  //  // Get.off(() => LoginPage());
  // }
}