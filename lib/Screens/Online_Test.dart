import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_project/Screens/Exam_Analytics.dart';
import 'package:school_project/Screens/Student_detail.dart';

class OnlineExam extends StatefulWidget {
  const OnlineExam({Key? key}) : super(key: key);

  @override
  State<OnlineExam> createState() => _OnlineExamState();
}

class _OnlineExamState extends State<OnlineExam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text("Online Exam"),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Get.off(StudentDetail());
          },
          icon: Icon(Icons.arrow_back_ios, color: Colors.blue,),
        ),
        actions: [
         Padding(
           padding: const EdgeInsets.only(right: 20),
           child: InkWell(
             onTap: (){
               Get.to(ExamAnalytics());
             },
             child: Container(
               padding: EdgeInsets.all(10),
               height: 40,width: 90,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10),
                 color: Colors.blue
               ),
               child: Text("Analytics", style: TextStyle(color: Colors.white),),
             ),
           ),
         )
        ],
      ),
      body:Column(
        children: [
          SizedBox(height: 3,),
          Container(
            padding: const EdgeInsets.all(14),
            height: 70,
            width: 360,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child:  Container(
              padding: const EdgeInsets.all(10),
              height: 40,
              width: 320,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text("Info! No Examination set form Administration !!",style:TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.white) ,),
            ),
          ),
        ],
      ),
    );
  }
}
