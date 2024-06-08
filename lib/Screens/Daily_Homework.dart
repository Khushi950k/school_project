import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_project/Screens/Notification.dart';
import 'package:school_project/Screens/Student_detail.dart';

class DailyHomework extends StatefulWidget {
  const DailyHomework({Key? key}) : super(key: key);

  @override
  State<DailyHomework> createState() => _DailyHomeworkState();
}

class _DailyHomeworkState extends State<DailyHomework> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text("Daily Home work"),
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              padding: EdgeInsets.all(15.0),
              height: 50,
              width: 325,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
              ),
              child: const Text('Homework                                    Date',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black),),
            ),
           
            
          )
        ],
      ),
    );
  }
}
