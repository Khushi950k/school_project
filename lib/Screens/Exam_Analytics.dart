import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_project/Screens/Online_Test.dart';

class ExamAnalytics extends StatefulWidget {
  const ExamAnalytics({Key? key}) : super(key: key);

  @override
  State<ExamAnalytics> createState() => _ExamAnalyticsState();
}

class _ExamAnalyticsState extends State<ExamAnalytics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text("Exam Analytics"),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Get.off(OnlineExam());
          },
          icon: Icon(Icons.arrow_back_ios, color: Colors.blue,),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("Data Not Found!!!", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.blueGrey),),
          )
        ],
      ),
    );
  }
}
