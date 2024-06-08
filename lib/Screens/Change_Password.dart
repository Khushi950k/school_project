import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_project/Screens/Notification.dart';
import 'package:school_project/Screens/Student_detail.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  TextEditingController OldPasswordController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();
  TextEditingController PasswordAgainController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text("Change Password"),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Get.off(StudentDetail());
          },
          icon: Icon(Icons.arrow_back_ios, color: Colors.blue,),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(Message());
            },
            icon: Icon(Icons.notifications_none,color: Colors.blue,),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
            children: [
            Padding(
              padding: const EdgeInsets.only( left:20),
              child: Text("Change Password", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black),),
            ),
            Padding(
              padding: const EdgeInsets.only(left:25,),
              child: Text("Change Your Password Here", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600,),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: Container(
                height: 230,
                width: 320,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: TextFormField(
                        controller: OldPasswordController,
                        decoration: InputDecoration(
                            labelText: "Old Password",
                            labelStyle: TextStyle(color: Colors.black,),
                            hintText: "Old Password",
                            hintStyle: TextStyle(color: Colors.grey,)
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: TextFormField(
                        controller: PasswordController,
                        decoration: InputDecoration(
                            labelText: "Password",
                            labelStyle: TextStyle(color: Colors.black,),
                            hintText: "Your Password",
                            hintStyle: TextStyle(color: Colors.grey,)
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: TextFormField(
                        controller: PasswordAgainController,
                        decoration: InputDecoration(
                            labelText: "Password Again",
                            labelStyle: TextStyle(color: Colors.black,),
                            hintText: "Type Password Again",
                            hintStyle: TextStyle(color: Colors.grey,)
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 285),
            Padding(
                padding: const EdgeInsets.only(left: 22),
                child: SizedBox(
                  width: 320,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: (){
                      //login(usernamecontroller.text.toString(),passwordcontroller.text.toString(),
                          //departementcontroller.text.toString());
                      // Get.to(StudentDetail());
                    },
                    child: Text('Submit', style: TextStyle(color: Colors.white),),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>( Colors.blue),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                )
            )
            ]
        ),
      ),

    );
  }
}

