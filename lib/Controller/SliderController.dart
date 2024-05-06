import 'package:get/get.dart';
import 'package:school_project/Service/api_service.dart';
import 'package:school_project/model/PrincipalModel.dart';
import 'package:school_project/model/UserModel.dart';

class SliderController extends GetxController{
  var isLoading = true.obs;
  var usersList = <UserModel>[];
  fetchUsers() async{
    try {
      isLoading(true);
      var userData = await ApiService().sliderData();
      usersList.add(userData);
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





