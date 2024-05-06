import 'package:http/http.dart' as http;
import 'package:school_project/model/AboutSchoolModel.dart';
import 'package:school_project/model/MembersModel.dart';
import 'package:school_project/model/PrincipalModel.dart';
import 'package:school_project/model/UserModel.dart';
class ApiService{
  Future<PrincipalModel>fetchUsersData()async{
    var response =
    await http.get(Uri.parse("https://school-alarm.com/demo/api/website/home_page/49"));
    if (response.statusCode==200){
      print("ok");
      return principalModelFromJson(response.body);
    }
    else{
      throw Exception("Network Error");
    }
  }
  Future<AboutSchoolModel>getUsersData()async{
    var response =
    await http.get(Uri.parse("https://school-alarm.com/demo/api/website/home_page/48"));
    if (response.statusCode==200){
      print("ok");
      return aboutSchoolModelFromJson(response.body);
    }
    else{
      throw Exception("Network Error");
    }
  }
  Future<MembersModel>takeUsersData()async{
    var response =
    await http.get(Uri.parse("https://school-alarm.com/demo/api/website/all_teacher"));
    if (response.statusCode==200){
      print("ok");
      return membersModelFromJson(response.body);
    }
    else{
      throw Exception("Network Error");
    }
  }
  Future<UserModel>sliderData()async{
    var response =
    await http.get(Uri.parse("https://school-alarm.com/demo/api/website/homepageslider"));
    if (response.statusCode==200){
      print("ok");
      return userModelFromJson(response.body);
    }
    else{
      throw Exception("Network Error");
    }
  }
}
