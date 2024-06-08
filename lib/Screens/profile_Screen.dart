import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_project/Screens/Change_Password.dart';
import 'package:school_project/Screens/Notification.dart';
import 'package:school_project/Screens/Student_detail.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text("Profile"),
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
      body:SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 36, top: 20),
              child: Container(
                height: 111,
                width:85,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(color: Colors.white, width: 5.0),
                  borderRadius: BorderRadius.circular(90),
                  image: const DecorationImage(
                    image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTq5So1rVk-CjDhvnOOIIiab2Wx2A804jwIeQ&usqp=CAU"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text("Misha Patel",style:TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black) ,),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 5),
              child: Container(
                height: 23,
                width: 110,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 3, top: 2),
                  child: Text("Enrollment Id - 001",style:TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.white) ,),
                ),
        
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(right: 150),
              child: Text("Profile Information",style:TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.grey) ,),
            ),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.only(left: 22),
          child: Container(
            height: 650,
            width: 320,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15)
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 10),
                      child: Text("Father's Name",style:TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black) ,),
                    ),
                    SizedBox(width: 60,),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, top: 10),
                      child: Container(
                        height: 23,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 3, top: 2),
                          child: Text("Mani kant kumar",style:TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.white) ,),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 6),
                  child: Divider(
                    color: Colors.grey,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 10),
                      child: Text("Mother's Name",style:TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black) ,),
                    ),
                    SizedBox(width: 60,),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, top: 10),
                      child: Container(
                        height: 23,
                        width: 90,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 3, top: 2),
                          child: Text("Manisha Singh",style:TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.white) ,),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 6),
                  child: Divider(
                    color: Colors.grey,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 10),
                      child: Text("Class",style:TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black) ,),
                    ),
                    SizedBox(width: 60,),
                    Padding(
                      padding: const EdgeInsets.only(left: 107, top: 10),
                      child: Container(
                        height: 23,
                        width: 84,
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 3, top: 2),
                          child: Text("Pre Nursery II",style:TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.white) ,),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 6),
                  child: Divider(
                    color: Colors.grey,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 10),
                      child: Text("Roll No.",style:TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black) ,),
                    ),
                    SizedBox(width: 60,),
                    Padding(
                      padding: const EdgeInsets.only(left: 150, top: 10),
                      child: Container(
                        height: 23,
                        width: 22,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 3, top: 2),
                          child: Text("01",style:TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.white) ,),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 6),
                  child: Divider(
                    color: Colors.grey,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 10),
                      child: Text("DOB",style:TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black) ,),
                    ),
                    SizedBox(width: 60,),
                    Padding(
                      padding: const EdgeInsets.only(left: 118, top: 10),
                      child: Container(
                        height: 23,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 3, top: 2),
                          child: Text("09-Dec-2020",style:TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.white) ,),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 6),
                  child: Divider(
                    color: Colors.grey,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 10),
                      child: Text("WhatsApp Receive SMS",style:TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black) ,),
                    ),
                    SizedBox(width: 38,),
                    Padding(
                      padding: const EdgeInsets.only( top: 10),
                      child: Container(
                        height: 23,
                        width: 78,
                        decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 3, top: 2),
                          child: Text("9508668865",style:TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.white) ,),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 6),
                  child: Divider(
                    color: Colors.grey,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 10),
                      child: Text("E-mail",style:TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black) ,),
                    ),
                    SizedBox(width: 185,),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, top: 10),
                      child: Container(
                        height: 23,
                        width: 30,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 3, top: 2),
                          child: Text("N/A",style:TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.white) ,),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 6),
                  child: Divider(
                    color: Colors.grey,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 10),
                      child: Text("Gender",style:TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black) ,),
                    ),
                    SizedBox(width: 160,),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, top: 10),
                      child: Container(
                        height: 23,
                        width: 48,
                        decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 3, top: 2),
                          child: Text("female",style:TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.white) ,),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 6),
                  child: Divider(
                    color: Colors.grey,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 10),
                      child: Text("Mobile Fathers No.",style:TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black) ,),
                    ),
                    SizedBox(width: 45,),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, top: 10),
                      child: Container(
                        height: 23,
                        width: 78,
                        decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 3, top: 2),
                          child: Text("9013681067",style:TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.white) ,),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 6),
                  child: Divider(
                    color: Colors.grey,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 10),
                      child: Text("Mobile Mothers No.",style:TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black) ,),
                    ),
                    SizedBox(width: 40,),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, top: 10),
                      child: Container(
                        height: 23,
                        width: 78,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 3, top: 2),
                          child: Text("6207449983",style:TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.white) ,),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 6),
                  child: Divider(
                    color: Colors.grey,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 10),
                      child: Text("Aadhar No.",style:TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black) ,),
                    ),
                    SizedBox(width: 150,),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, top: 10),
                      child: Container(
                        height: 23,
                        width: 30,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 3, top: 2),
                          child: Text("N/A",style:TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.white) ,),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 6),
                  child: Divider(
                    color: Colors.grey,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 10),
                      child: Text("Address",style:TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black) ,),
                    ),
                    SizedBox(width: 142,),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, top: 10),
                      child: Container(
                        height: 23,
                        width: 62,
                        decoration: BoxDecoration(
                            color: Colors.pinkAccent,
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 3, top: 2),
                          child: Text("Daniawan",style:TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.white) ,),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(right: 220),
              child: Text("Security",style:TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.grey) ,),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 22),
              child: Container(
                height: 50,
                width: 320,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text("Update Password",style:TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black) ,),
                    ),
                    SizedBox(width: 150,),
                    InkWell(
                        onTap: (){
                          Get.to(ChangePassword());
                        },
                        child: Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16,)),
                  ],
                ),
              ),

            ),
            SizedBox(height: 15,),
          ],
        ),
      ),
    );
  }
}
