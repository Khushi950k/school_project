import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_project/Controller/user_controller.dart';
import 'package:school_project/Screens/Home_Screen.dart';

class PrincipalDesk extends StatefulWidget {
  const PrincipalDesk({Key? key}) : super(key: key);

  @override
  State<PrincipalDesk> createState() => _PrincipalDeskState();
}

class _PrincipalDeskState extends State<PrincipalDesk> {
  var userController = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Principal's Desk",style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Get.off(HomeScreen());
          },
          icon: Icon(Icons.arrow_back_ios, color: Colors.blue,),
        ),
      ),
      body: Obx((){
           if(userController.isLoading.value){
             return Center(child: CircularProgressIndicator());
           }
           return SizedBox(
           //height: 200,
           child: ListView.builder(
               shrinkWrap: true,
               //scrollDirection: Axis.horizontal,
           itemCount: userController.usersList.length,
           itemBuilder: (context, index){
           return Column(
             children: [
               Container(
                 // height: 180,
               //width: 350,
               color: Colors.grey.shade400,
               child:Image.network("${userController.usersList[index].key[0].photo}")
               ),
                SizedBox(height: 20,),
                Container(
                  height: 1110,
                 width: 330,
                 color: Colors.white,
                  child: Column(
                    children: [
                      Text(userController.usersList[index].key[index].title,
                        style: TextStyle(fontSize: 22, color: Colors.green, fontWeight: FontWeight.bold),),
                      Text(userController.usersList[index].key[index].description,
                        style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.normal),),
                      Text(userController.usersList[index].key[index].addDate,
                        style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),),

                    ],
                  )
                )
             ],
           );

           }),
           );
           }),
    );
  }
}
