import 'package:get/get.dart';
import 'package:school_project/Service/api_service.dart';
import 'package:school_project/model/PrincipalModel.dart';

class UserController extends GetxController{
  var isLoading = true.obs;
  var usersList = <PrincipalModel>[];
  fetchUsers() async{
    try {
      isLoading(true);
      var userData = await ApiService().fetchUsersData();
      usersList.add(userData as PrincipalModel);
    }catch(e){
      print("Error fetching user data $e");
    }finally{
      isLoading(false);
    }
  }
  @override
  void onInit(){
    fetchUsers();
    super.onInit();
  }
}





