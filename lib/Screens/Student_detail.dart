import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_project/Screens/Login_page.dart';

class StudentDetail extends StatefulWidget {
  const StudentDetail({Key? key}) : super(key: key);

  @override
  State<StudentDetail> createState() => _StudentDetailState();
}

class _StudentDetailState extends State<StudentDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            onPressed: () {
              Get.off(LoginPage());},
            icon: Icon(Icons.drag_handle, color: Colors.white,),
          ),
         Image.asset("assets/images/logo3.png",
         alignment: Alignment.center,),

        ],

      ),
      body: Drawer(

    child: ListView(
    padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Text('Drawer Header'),
        ),
        ListTile(
          title: const Text('Home'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: const Text('Business'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: const Text('School'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    ),
      ),
    );
  }
}

