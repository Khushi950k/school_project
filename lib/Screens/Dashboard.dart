import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/dropdown/gf_dropdown.dart';
import 'package:school_project/Screens/Notification.dart';
import 'package:school_project/Screens/Student_detail.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  String dropdown = 'TERM-1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body:Column(
        children: [
        Container(
        height: 50,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.all(20),
        child: DropdownButtonHideUnderline(
          child: GFDropdown(
            padding: const EdgeInsets.all(15),
            borderRadius: BorderRadius.circular(5),
            border: const BorderSide(
                color: Colors.black12, width: 1),
            dropdownButtonColor: Colors.white,
            value: dropdown,
            onChanged: (newValue) {
              setState(() {
                dropdown = newValue!;
              });
            },
            items: ['FC Barcelona', 'Real Madrid', 'Villareal', 'Manchester City']
                .map((value) => DropdownMenuItem(
              value: value,
              child: Text(value),
            ))
                .toList(),
          ),
        ),
      ),
        ],
      ),

    );
  }
}
