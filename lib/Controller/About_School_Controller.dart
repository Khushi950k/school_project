import 'package:get/get.dart';
import 'package:school_project/Service/api_service.dart';
import 'package:school_project/model/AboutSchoolModel.dart';

class AboutSchoolController extends GetxController{
  var isLoading = true.obs;
  var usersList = <AboutSchoolModel>[];
  getUsers() async{
    try {
      isLoading(true);
      var userData = await ApiService().getUsersData();
      usersList.add(userData);
    }catch(e){
      print("Error fetching user data $e");
    }finally{
      isLoading(false);
    }
  }
  @override
  void onInit(){
    getUsers();
    super.onInit();
  }
}





