import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_project/Screens/Notification.dart';
import 'package:school_project/Screens/Student_detail.dart';

class ClassActivity extends StatefulWidget {
  const ClassActivity({Key? key}) : super(key: key);

  @override
  State<ClassActivity> createState() => _ClassActivityState();
}

class _ClassActivityState extends State<ClassActivity> {
  bool onClick = false;
  bool Click = false;
  bool Click1 = false;
  bool Click2 = false;
  bool Click3 = false;
  bool Click4 = false;
  bool Click5 = false;
  bool Click6 = false;
  bool Click7 = false;
  bool Click8 = false;
  bool Click9 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text("Class Activity"),
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
               padding: const EdgeInsets.only(left: 15),
               child: Text("Study Material",style:TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black) ,),
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
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text("English", style:TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white) ,),
                        ),
                        SizedBox(width: 190,),
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
                      padding: const EdgeInsets.all(14),
                      height: 70,
                      width: 320,
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
                        child: const Text("Info! No Any Activity Found Now!!",style:TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.white) ,),
                      ),
                    ),
                  SizedBox(height: 5,),
                  Container(
                    height: 55,
                    width: 320,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text("Hindi", style:TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white) ,),
                        ),
                        SizedBox(width: 205,),
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
                      padding: const EdgeInsets.all(14),
                      height: 70,
                      width: 320,
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
                        child: const Text("Info! No Any Activity Found Now!!",style:TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.white) ,),
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
                          child: Text("Maths", style:TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white) ,),
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
                      padding: const EdgeInsets.all(14),
                      height: 70,
                      width: 320,
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
                        child: const Text("Info! No Any Activity Found Now!!",style:TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.white) ,),
                      ),
                    ),
                  SizedBox(height: 5,),
                  Container(
                    height: 55,
                    width: 320,
                    decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text("E.V.S", style:TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white) ,),
                        ),
                        SizedBox(width: 208,),
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
                      padding: const EdgeInsets.all(14),
                      height: 70,
                      width: 320,
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
                        child: const Text("Info! No Any Activity Found Now!!",style:TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.white) ,),
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
                          child: Text("Dance & Drawing", style:TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white) ,),
                        ),
                        SizedBox(width: 130,),
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
                      padding: const EdgeInsets.all(14),
                      height: 70,
                      width: 320,
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
                        child: const Text("Info! No Any Activity Found Now!!",style:TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.white) ,),
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
                          child: Text("Oral", style:TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white) ,),
                        ),
                        SizedBox(width: 215,),
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
                      padding: const EdgeInsets.all(14),
                      height: 70,
                      width: 320,
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
                        child: const Text("Info! No Any Activity Found Now!!",style:TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.white) ,),
                      ),
                    ),
                  SizedBox(height: 5,),
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
                          child: Text("T.V", style:TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white) ,),
                        ),
                        SizedBox(width: 220,),
                        IconButton(
                          color: Colors.white,
                          onPressed: () {
                            setState(() {
                              Click5 = !Click5;});},
                          icon: Icon(
                            Click5
                                ? Icons.arrow_drop_up_outlined
                                : Icons.arrow_drop_down_outlined,
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (Click5)
                    Container(
                      padding: const EdgeInsets.all(14),
                      height: 70,
                      width: 320,
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
                        child: const Text("Info! No Any Activity Found Now!!",style:TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.white) ,),
                      ),
                    ),
                  SizedBox(height: 5,),
                  Container(
                    height: 55,
                    width: 320,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text("Math 1 to 20", style:TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white) ,),
                        ),
                        SizedBox(width: 157,),
                        IconButton(
                          color: Colors.white,
                          onPressed: () {
                            setState(() {
                              Click6 = !Click6;});},
                          icon: Icon(
                            Click6
                                ? Icons.arrow_drop_up_outlined
                                : Icons.arrow_drop_down_outlined,
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (Click6)
                    Container(
                      padding: const EdgeInsets.all(14),
                      height: 70,
                      width: 320,
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
                        child: const Text("Info! No Any Activity Found Now!!",style:TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.white) ,),
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
                          child: Text("Activity", style:TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white) ,),
                        ),
                        SizedBox(width: 190,),
                        IconButton(
                          color: Colors.white,
                          onPressed: () {
                            setState(() {
                              Click7 = !Click7;});},
                          icon: Icon(
                            Click7
                                ? Icons.arrow_drop_up_outlined
                                : Icons.arrow_drop_down_outlined,
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (Click7)
                    Container(
                      padding: const EdgeInsets.all(14),
                      height: 70,
                      width: 320,
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
                        child: const Text("Info! No Any Activity Found Now!!",style:TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.white) ,),
                      ),
                    ),
                  SizedBox(height: 5,),
                  Container(
                    height: 55,
                    width: 320,
                    decoration: BoxDecoration(
                      color: Colors.brown,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text("Dance", style:TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white) ,),
                        ),
                        SizedBox(width: 198,),
                        IconButton(
                          color: Colors.white,
                          onPressed: () {
                            setState(() {
                              Click8 = !Click8;});},
                          icon: Icon(
                            Click8
                                ? Icons.arrow_drop_up_outlined
                                : Icons.arrow_drop_down_outlined,
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (Click8)
                    Container(
                      padding: const EdgeInsets.all(14),
                      height: 70,
                      width: 320,
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
                        child: const Text("Info! No Any Activity Found Now!!",style:TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.white) ,),
                      ),
                    ),
                  SizedBox(height: 5,),
                  Container(
                    height: 55,
                    width: 320,
                    decoration: BoxDecoration(
                      color: Colors.purpleAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text("Drawing", style:TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white) ,),
                        ),
                        SizedBox(width: 186,),
                        IconButton(
                          color: Colors.white,
                          onPressed: () {
                            setState(() {
                              Click9 = !Click9;});},
                          icon: Icon(
                            Click9
                                ? Icons.arrow_drop_up_outlined
                                : Icons.arrow_drop_down_outlined,
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (Click9)
                    Container(
                      padding: const EdgeInsets.all(14),
                      height: 70,
                      width: 320,
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
                        child: const Text("Info! No Any Activity Found Now!!",style:TextStyle(fontSize: 13, fontWeight: FontWeight.w400, color: Colors.white) ,),
                      ),
                    ),
                ],
              ),
            ),
            SizedBox(height: 20,),
          ],
        
        ),
      ),
    );
  }
}
