import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_project/Controller/Members_controller.dart';
import 'package:school_project/Screens/Home_Screen.dart';

class MembersScreen extends StatefulWidget {
  const MembersScreen({Key? key}) : super(key: key);

  @override
  State<MembersScreen> createState() => _MembersScreenState();
}

class _MembersScreenState extends State<MembersScreen> {
  var membersController = Get.put(MembersController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: Text("All Working Member's"),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Get.off(HomeScreen());
          },
          icon: Icon(Icons.arrow_back_ios, color: Colors.blue,),
        ),
      ),
      body:  Obx((){
      if(membersController.isLoading.value){
        return Center(child: CircularProgressIndicator());
      }
      return SizedBox(
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: membersController.usersList.length,
              itemBuilder: (context, index){
                return Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                              height: 210,
                              width: 160,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Column(
                                children: [
                                  Image.network("${membersController.usersList[index].key[0].photo}"),
                                  Text(membersController.usersList[index].key[index].name,
                                    style: TextStyle(fontSize: 19, color: Colors.black, fontWeight: FontWeight.w700),),
                                  Text(membersController.usersList[index].key[index].subject,
                                    style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.normal),),
                                  Text(membersController.usersList[index].key[index].joiningDate,
                                    style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w600),),
                                ],
                              )
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:5,),
                          child: Container(
                              height: 210,
                              width: 160,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Column(
                                children: [
                                  Image.network("${membersController.usersList[index].key[1].photo}"),
                                Text(membersController.usersList[index].key[1].name,
                                    style: TextStyle(fontSize: 19, color: Colors.black, fontWeight: FontWeight.w700),),
                                  Text(membersController.usersList[index].key[1].subject,
                                    style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.normal),),
                                  Text(membersController.usersList[index].key[1].joiningDate,
                                    style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w600),),
                                ],
                              )
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                              height: 210,
                              width: 160,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Column(
                                children: [
                                  Image.network("${membersController.usersList[index].key[2].photo}"),
                                  Text(membersController.usersList[index].key[2].name,
                                    style: TextStyle(fontSize: 19, color: Colors.black, fontWeight: FontWeight.w700),),
                                  Text(membersController.usersList[index].key[2].subject,
                                    style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.normal),),
                                  Text(membersController.usersList[index].key[2].joiningDate,
                                    style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w600),),
                                ],
                              )
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:5,),
                          child: Container(
                              height: 210,
                              width: 160,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Column(
                                children: [
                                  Image.network("${membersController.usersList[index].key[3].photo}"),
                                  Text(membersController.usersList[index].key[3].name,
                                    style: TextStyle(fontSize: 19, color: Colors.black, fontWeight: FontWeight.w700),),
                                  Text(membersController.usersList[index].key[3].subject,
                                    style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.normal),),
                                  Text(membersController.usersList[index].key[3].joiningDate,
                                    style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w600),),
                                ],
                              )
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                              height: 210,
                              width: 160,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Column(
                                children: [
                                  Image.network("${membersController.usersList[index].key[4].photo}"),
                                  Text(membersController.usersList[index].key[4].name,
                                    style: TextStyle(fontSize: 19, color: Colors.black, fontWeight: FontWeight.w700),),
                                  Text(membersController.usersList[index].key[4].subject,
                                    style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.normal),),
                                  Text(membersController.usersList[index].key[4].joiningDate,
                                    style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w600),),
                                ],
                              )
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:5,),
                          child: Container(
                              height: 210,
                              width: 160,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Column(
                                children: [
                                  Image.network("${membersController.usersList[index].key[5].photo}"),
                                  Text(membersController.usersList[index].key[5].name,
                                    style: TextStyle(fontSize: 19, color: Colors.black, fontWeight: FontWeight.w700),),
                                  Text(membersController.usersList[index].key[5].subject,
                                    style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.normal),),
                                  Text(membersController.usersList[index].key[5].joiningDate,
                                    style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w600),),
                                ],
                              )
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              }),
      );
      }),
    );
  }
}
