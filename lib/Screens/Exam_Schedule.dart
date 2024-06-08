import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_project/Screens/Notification.dart';
import 'package:school_project/Screens/Student_detail.dart';

class ExamSchedule extends StatefulWidget {
  const ExamSchedule({Key? key}) : super(key: key);

  @override
  State<ExamSchedule> createState() => _ExamScheduleState();
}

class _ExamScheduleState extends State<ExamSchedule> {
  bool onClick = false;
  bool Click = false;
  bool Click1 = false;
  bool Click2 = false;
  bool Click3 = false;
  bool Click4 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text("Exam Schedule"),
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
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only( right: 210),
              child: Text("Exam Schedule",style:TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black) ,),
            ),
            SizedBox(height: 10,),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 55,
                    width: 320,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                         Padding(
                           padding: const EdgeInsets.all(15.0),
                           child: Text("FA - 1", style:TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white) ,),
                         ),
                        SizedBox(width: 200,),
                        IconButton(
                          color: Colors.white,
                          onPressed: () {
                            setState(() {
                              onClick = !onClick;});},
                          icon: Icon(
                            onClick
                                ? Icons.arrow_drop_up_outlined
                                : Icons.arrow_drop_down_outlined,
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (onClick)
                    Container(
                      padding: const EdgeInsets.all(17),
                      height: 100,
                      width: 320,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child:  Container(
                        padding: const EdgeInsets.all(20),
                        height: 60,
                        width: 320,
                        decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text("Routine not created by administration ☺",style:TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.white) ,),
                      ),
                    ),
                  SizedBox(height: 5,),
                  Container(
                    height: 55,
                    width: 320,
                    decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text("FA - 2", style:TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white) ,),
                        ),
                        SizedBox(width: 200,),
                        IconButton(
                          color: Colors.white,
                          onPressed: () {
                            setState(() {
                              Click = !Click;});},
                          icon: Icon(
                            Click
                                ? Icons.arrow_drop_up_outlined
                                : Icons.arrow_drop_down_outlined,
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (Click)
                    Container(
                      padding: const EdgeInsets.all(17),
                      height: 100,
                      width: 320,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child:  Container(
                        padding: const EdgeInsets.all(20),
                        height: 60,
                        width: 320,
                        decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text("Routine not created by administration ☺",style:TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.white) ,),
                      ),
                    ),
                  SizedBox(height: 5,),
                  Container(
                    height: 55,
                    width: 320,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text("FA - 3", style:TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white) ,),
                        ),
                        SizedBox(width: 200,),
                        IconButton(
                          color: Colors.white,
                          onPressed: () {
                            setState(() {
                              Click1 = !Click1;});},
                          icon: Icon(
                            Click1
                                ? Icons.arrow_drop_up_outlined
                                : Icons.arrow_drop_down_outlined,
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (Click1)
                    Container(
                      padding: const EdgeInsets.all(17),
                      height: 100,
                      width: 320,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child:  Container(
                        padding: const EdgeInsets.all(20),
                        height: 60,
                        width: 320,
                        decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text("Routine not created by administration ☺",style:TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.white) ,),
                      ),
                    ),
                  SizedBox(height: 5,),
                  Container(
                    height: 55,
                    width: 320,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text("FA - 4", style:TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white) ,),
                        ),
                        SizedBox(width: 200,),
                        IconButton(
                          color: Colors.white,
                          onPressed: () {
                            setState(() {
                              Click2 = !Click2;});},
                          icon: Icon(
                            Click2
                                ? Icons.arrow_drop_up_outlined
                                : Icons.arrow_drop_down_outlined,
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (Click2)
                    Container(
                      padding: const EdgeInsets.all(17),
                      height: 100,
                      width: 320,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child:  Container(
                        padding: const EdgeInsets.all(20),
                        height: 60,
                        width: 320,
                        decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text("Routine not created by administration ☺",style:TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.white) ,),
                      ),
                    ),
                  SizedBox(height: 5,),
                  Container(
                    height: 55,
                    width: 320,
                    decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text("TERM - 1", style:TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white) ,),
                        ),
                        SizedBox(width: 180,),
                        IconButton(
                          color: Colors.white,
                          onPressed: () {
                            setState(() {
                              Click3 = !Click3;});},
                          icon: Icon(
                            Click3
                                ? Icons.arrow_drop_up_outlined
                                : Icons.arrow_drop_down_outlined,
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (Click3)
                    Container(
                      padding: const EdgeInsets.all(17),
                      height: 100,
                      width: 320,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child:  Container(
                        padding: const EdgeInsets.all(20),
                        height: 60,
                        width: 320,
                        decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text("Routine not created by administration ☺",style:TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.white) ,),
                      ),
                    ),
                  SizedBox(height: 5,),
                  Container(
                    height: 55,
                    width: 320,
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text("TERM - 2", style:TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white) ,),
                        ),
                        SizedBox(width: 180,),
                        IconButton(
                          color: Colors.white,
                          onPressed: () {
                            setState(() {
                              Click4 = !Click4;});},
                          icon: Icon(
                            Click4
                                ? Icons.arrow_drop_up_outlined
                                : Icons.arrow_drop_down_outlined,
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (Click4)
                    Container(
                      padding: const EdgeInsets.all(17),
                      height: 100,
                      width: 320,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child:  Container(
                        padding: const EdgeInsets.all(20),
                        height: 60,
                        width: 320,
                        decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text("Routine not created by administration ☺",style:TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.white) ,),
                      ),
                    ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
