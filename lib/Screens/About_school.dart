import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_project/Controller/About_School_Controller.dart';
import 'package:school_project/Screens/Home_Screen.dart';

class AboutSchool extends StatefulWidget {
  const AboutSchool({Key? key}) : super(key: key);

  @override
  State<AboutSchool> createState() => _AboutSchoolState();
}

class _AboutSchoolState extends State<AboutSchool> {
  var aboutschoolController = Get.put(AboutSchoolController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Our School",style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),),
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
        if(aboutschoolController.isLoading.value){
          return Center(child: CircularProgressIndicator());
        }
        return SizedBox(
          //height: 200,
          child: ListView.builder(
              shrinkWrap: true,
              //scrollDirection: Axis.horizontal,
              itemCount: aboutschoolController.usersList.length,
              itemBuilder: (context, index){
                return Column(
                  children: [
                    Container(
                      // height: 180,
                      //width: 350,
                        color: Colors.grey.shade400,
                        child:Image.network("${aboutschoolController.usersList[index].key[0].photo}")
                    ),
                    SizedBox(height: 20,),
                    Container(
                        height: 500,
                        width: 330,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Text(aboutschoolController.usersList[index].key[index].title,
                              style: TextStyle(fontSize: 22, color: Colors.green, fontWeight: FontWeight.bold),),
                            Text(aboutschoolController.usersList[index].key[index].description,
                              style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.normal),),
                            Text(aboutschoolController.usersList[index].key[index].addDate,
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
