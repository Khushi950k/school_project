import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_project/Screens/Student_detail.dart';

class Zoom extends StatefulWidget {
  const Zoom({Key? key}) : super(key: key);

  @override
  State<Zoom> createState() => _ZoomState();
}

class _ZoomState extends State<Zoom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text("Online Zoom Class"),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Get.off(StudentDetail());
          },
          icon: Icon(Icons.arrow_back_ios, color: Colors.blue,),
        ),
      ),
    );
  }
}
