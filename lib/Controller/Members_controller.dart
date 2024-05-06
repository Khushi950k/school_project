import 'package:get/get.dart';
import 'package:school_project/Service/api_service.dart';
import 'package:school_project/model/MembersModel.dart';

class MembersController extends GetxController{
  var isLoading = true.obs;
  var usersList = <MembersModel>[];
  takeUsers() async{
    try {
      isLoading(true);
      var userData = await ApiService().takeUsersData();
      usersList.add(userData);
    }catch(e){
      print("Error fetching user data $e");
    }finally{
      isLoading(false);
    }
  }
  @override
  void onInit(){
    takeUsers();
    super.onInit();
  }
}





