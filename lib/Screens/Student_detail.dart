import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_project/Screens/Attendance_Report.dart';
import 'package:school_project/Screens/Class_Activity.dart';
import 'package:school_project/Screens/Daily_Homework.dart';
import 'package:school_project/Screens/Dashboard.dart';
import 'package:school_project/Screens/Detail_Homework.dart';
import 'package:school_project/Screens/Exam_Schedule.dart';
import 'package:school_project/Screens/Examination_Result.dart';
import 'package:school_project/Screens/Feedback.dart';
import 'package:school_project/Screens/Login_page.dart';
import 'package:school_project/Screens/Monthly_Slip.dart';
import 'package:school_project/Screens/Notification.dart';
import 'package:school_project/Screens/Online_Test.dart';
import 'package:school_project/Screens/Online_Zoom_Class.dart';
import 'package:school_project/Screens/Time_Table.dart';
import 'package:school_project/Screens/profile_Screen.dart';
import 'package:school_project/Widgets/Bottom_Navigation_Bar.dart';

class StudentDetail extends StatefulWidget {
  const StudentDetail({Key? key}) : super(key: key);
  @override
  State<StudentDetail> createState() => _StudentDetailState();
}

class _StudentDetailState extends State<StudentDetail> {
  int _selectedIndex = 0;
  Map<int, GlobalKey<NavigatorState>> navigatorKeys = {
    0: GlobalKey<NavigatorState>(),
    1: GlobalKey<NavigatorState>(),
    2: GlobalKey<NavigatorState>(),
  };
  final List<Widget> _widgetOptions = <Widget>[
    const ProfileScreen(),
    const TimeTable(),
    const AttendanceReport()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blueAccent,
       unselectedItemColor: Colors.white,
       backgroundColor: Colors.blue,
        items: [
        BottomNavigationBarItem(
         // backgroundColor: Colors.grey,
                  icon: Icon(Icons.dashboard, color:Colors.blueGrey),
                  label: 'Dashboard',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.money,color:Colors.blueGrey),
                  label: 'Fees',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.camera_outlined,color:Colors.blueGrey),
                  label: 'Blog',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.av_timer,color:Colors.blueGrey),
                  label: 'Time Table',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.settings,color:Colors.blueGrey),
                  label: 'Settings',
                ),
        ],
        currentIndex: _selectedIndex,
        //selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),

      appBar: AppBar(
        backgroundColor: Colors.blue,
        actions: [
          Container(
            height: 80,
            width: 70,
            child: Image.asset("assets/images/logo3.png",
              alignment: Alignment.center,),
          ),
          SizedBox(width: 50,),
          InkWell(
            onTap: (){
              Get.to(Message());
            },
              child: Icon(Icons.notifications, color: Colors.white,)),
          SizedBox(width: 30,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 50,
              width: 36,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10)
              ),
              child: InkWell(
                onTap: (){
                  Get.to(ProfileScreen());
                },
                  child: Image.asset("assets/images/profile2.jpg",)),
            ),
          ),

        ],
      ),

      drawer:Drawer(
        shadowColor: Colors.white,
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container (
              height: 140,
              color: Colors.white,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      height: 85,
                      width:65,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                          border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                                  image: NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTq5So1rVk-CjDhvnOOIIiab2Wx2A804jwIeQ&usqp=CAU"),
                                  fit: BoxFit.cover,
                                ),
                      ),
                    ),
                  ),
                  SizedBox(width: 5,),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 52, left: 10),
                        child: Text("Misha Patel",style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,color: Colors.black ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 50),
                        child: Text("001",style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,color: Colors.grey.shade400 ),),
                      ),
                    ],
                  ),
                  SizedBox(width: 73,),
                  Icon(Icons.close_rounded, color: Colors.blue, size: 17,)
                ],
              ),
            ),
            Container (
              height: 90,
              color: Colors.blue,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 210, top: 15),
                    child: Text("Due Fees", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500,color: Colors.grey.shade400 ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,top: 2, right: 153),
                    child: Text(" ₹ 100.00", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.white ),),
                  ),
                ]
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25, top: 20),
              child: Text("Menu", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600),),
            ),
            ListTile(
              leading: Container(
                height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: Icon(Icons.person_outline, color:Colors.white)),
              subtitle: Padding(
                padding: const EdgeInsets.only(bottom: 12, top: 12),
                child: InkWell(
                  onTap: (){
                    Get.to(ProfileScreen());
                  },
                    child: const Text('Profile', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),)),
              ),
              trailing:const Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16,),
            ),
            ListTile(
              leading: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Icon(Icons.calendar_month, color:Colors.white)),
              subtitle: Padding(
                padding: const EdgeInsets.only(bottom: 12, top: 10),
                child: InkWell(
                  onTap: (){
                    Get.to(AttendanceReport());
                  },
                    child: const Text('Attendance', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),)),
              ),
              trailing:const Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16,),
            ),
            ListTile(
              leading: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Icon(Icons.alarm, color:Colors.white)),
              subtitle: Padding(
                padding: const EdgeInsets.only(bottom: 12, top: 10),
                child: InkWell(
                    onTap: (){
                      Get.to(TimeTable());
                    },
                    child: const Text('Time Table', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),)),
              ),
              trailing:const Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16,),
            ),
            ListTile(
              leading: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Icon(Icons.copy_all, color:Colors.white)),
              subtitle: Padding(
                padding: const EdgeInsets.only(bottom: 12, top: 10),
                child: InkWell(
                    onTap: (){
                      Get.to(DailyHomework());
                    },
                    child: const Text('Homework', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),)),
              ),
              trailing:const Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16,),
            ),
            ListTile(
              leading: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Icon(Icons.newspaper_sharp, color:Colors.white)),
              subtitle: Padding(
                padding: const EdgeInsets.only(bottom: 12, top: 10),
                child: InkWell(
                    onTap: (){
                      Get.to(DetailHomework());
                    },
                    child: const Text('Detail Homework', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),)),
              ),
              trailing:const Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16,),
            ),
            ListTile(
              leading: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Icon(Icons.book_online_outlined, color:Colors.white)),
              subtitle: Padding(
                padding: const EdgeInsets.only(bottom: 12, top: 10),
                child: InkWell(
                    onTap: (){
                      Get.to(ClassActivity());
                    },
                    child: const Text('Study Material', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),)),
              ),
              trailing:const Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16,),
            ),
            ListTile(
              leading: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Icon(Icons.wifi_tethering_outlined, color:Colors.white)),
              subtitle: Padding(
                padding: const EdgeInsets.only(bottom: 12, top: 10),
                child: InkWell(
                  onTap: (){
                    Get.to(Zoom());
                  },
                    child: const Text('Online Class', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),)),
              ),
              trailing:const Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16,),
            ),
            ListTile(
              leading: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Icon(Icons.mic, color:Colors.white)),
              subtitle: Padding(
                padding: const EdgeInsets.only(bottom: 12, top: 10),
                child: const Text('Announcement', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),),
              ),
              trailing:const Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16,),
            ),
            ListTile(
              leading: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Icon(Icons.sd_card, color:Colors.white)),
              subtitle: Padding(
                padding: const EdgeInsets.only(bottom: 12, top: 10),
                child: const Text('Admit Card', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),),
              ),
              trailing:const Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16,),
            ),
            ListTile(
              leading: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Icon(Icons.book_rounded, color:Colors.white)),
              subtitle: Padding(
                padding: const EdgeInsets.only(bottom: 12, top: 10),
                child: InkWell(
                    onTap: (){
                      Get.to(ExaminationResult());
                    },
                    child: const Text('Result', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),)),
              ),
              trailing:const Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16,),
            ),
            ListTile(
              leading: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Icon(Icons.feedback_outlined, color:Colors.white)),
              subtitle: Padding(
                padding: const EdgeInsets.only(bottom: 12, top: 10),
                child: const Text('Feedback', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),),
              ),
              trailing:const Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16,),
            ),
            ListTile(
              leading: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Icon(Icons.money_outlined, color:Colors.white)),
              subtitle: Padding(
                padding: const EdgeInsets.only(bottom: 12, top: 10),
                child: InkWell(
                    onTap: (){
                      Get.to(MonthlySlip());
                    },
                    child: const Text('Fee', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),)),
              ),
              trailing:const Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16,),
            ),
            ListTile(
              leading: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Icon(Icons.book_online, color:Colors.white)),
              subtitle: Padding(
                padding: const EdgeInsets.only(bottom: 12, top: 10),
                child: InkWell(
                    onTap: (){
                      Get.to(OnlineExam());
                    },
                    child: const Text('Online Test', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),)),
              ),
              trailing:const Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16,),
            ),
            ListTile(
              leading: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.pinkAccent,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Icon(Icons.logout, color:Colors.white)),
              subtitle: Padding(
                padding: const EdgeInsets.only(bottom: 12, top: 10),
                child: InkWell(
                    onTap: (){
                      Get.to(LoginPage());
                    },
                    child: const Text('Logout', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),)),
              ),
              trailing:const Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16,),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  height: 130,
                  width: 400,
                  color: Colors.blue,
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 140,
                        width: 320,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 20,),
                            Padding(
                              padding: const EdgeInsets.only(left: 10,top: 10, right: 230),
                              child: Text("Due Fees", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, ),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10,top: 2, right: 170),
                              child: Text(" ₹ 1,150.00", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, ),),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),

                )
              ],
            ),
            SizedBox(height: 40,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Container(
                    height: 60,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 70, top: 5),
                          child: Text("Slip No.", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400,color:Colors.grey ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 60,),
                          child: Text("1648", style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold, ),),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Container(
                    height: 60,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 70, top: 5),
                          child: Text("Gen. Date", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400,color:Colors.grey ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 45,),
                          child: Text("Mar-24", style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold, color: Colors.pinkAccent ),),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 15,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Container(
                    height: 60,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 50, top: 5),
                          child: Text("Fee Details", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400,color:Colors.grey ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 60,),
                          child: Text("1150", style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold, color:Colors.red),),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Container(
                    height: 60,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 90, top: 5),
                          child: Text("Paid", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400,color:Colors.grey ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 85,),
                          child: Text("₹ 0", style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold, color: Colors.green ),),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
      SizedBox(height: 17,),
      Container(
        height: 80,
        width: 320,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15)
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 17),
              child: Container(
                height: 55,
                width: 135,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 22, top: 15, left:45),
                  child: InkWell(
                    onTap: (){
                      Get.to(ProfileScreen());
                    },
                      child: Text("Profile", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400,color:Colors.white ),)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Container(
                height: 55,
                width: 135,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 13, top: 15, left:30),
                  child: InkWell(
                      onTap: (){
                        Get.to(AttendanceReport());
                      },
                      child: Text("Attendance", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400,color:Colors.white ),)),
                ),
              ),
            )
          ],
        ),
      ),
            SizedBox(height: 17,),
            Container(
              height: 80,
              width: 320,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 17),
                    child: Container(
                      height: 55,
                      width: 135,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 22, top: 15, left:30),
                        child: InkWell(
                            onTap: (){
                              Get.to(TimeTable());
                            },
                            child: Text("Time Table", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400,color:Colors.white ),)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Container(
                      height: 55,
                      width: 135,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 13, top: 15, left:30),
                        child: InkWell(
                            onTap: (){
                              Get.to(DailyHomework());
                            },
                            child: Text("Homework", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400,color:Colors.white ),)),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 17,),
            Container(
              height: 80,
              width: 320,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 17),
                    child: Container(
                      height: 55,
                      width: 135,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 22, top: 10, left:30),
                        child: InkWell(
                            onTap: (){
                              Get.to(DetailHomework());
                            },
                            child: Text("Detail Homework", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400,color:Colors.white ),)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Container(
                      height: 55,
                      width: 135,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 13, top: 15, left:20),
                        child: InkWell(
                          onTap: (){
                            Get.to(ClassActivity());
                          },
                            child: Text("Study Material", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400,color:Colors.white ),)),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 17,),
            Container(
              height: 80,
              width: 320,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 17),
                    child: Container(
                      height: 55,
                      width: 135,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 22, top: 15, left:40),
                        child: InkWell(
                            onTap: (){
                              Get.to(Zoom());
                            },
                            child: Text("Zoom", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400,color:Colors.white ),)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Container(
                      height: 55,
                      width: 135,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 13, top: 15, left:35),
                        child: InkWell(
                           onTap: (){
                            // Get.to(BottomNavigation());
                           },
                            child: Text("Announ..", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400,color:Colors.white ),)),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 17,),
            Container(
              height: 80,
              width: 320,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 17),
                    child: Container(
                      height: 55,
                      width: 135,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 22, top: 10, left:35),
                        child: InkWell(
                          onTap: (){
                            Get.to(ExamSchedule());
                          },
                            child: Text("Exam Schedule", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400,color:Colors.white ),)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Container(
                      height: 55,
                      width: 135,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 13, top: 15, left:30),
                        child: InkWell(
                            onTap: (){
                              //Get.to(BottomNavigation());
                            },
                            child: Text("Admit Card", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400,color:Colors.white ),)),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 17,),
            Container(
              height: 80,
              width: 320,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 17),
                    child: Container(
                      height: 55,
                      width: 135,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 22, top: 15, left:40),
                        child: InkWell(
                            onTap: (){
                              Get.to(ExaminationResult());
                            },
                            child: Text("Result", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400,color:Colors.white ),)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Container(
                      height: 55,
                      width: 135,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 13, top: 15, left:33),
                        child: InkWell(
                            onTap: (){
                              //MaterialPageRoute(builder: (context) => const FeedbackScreen());
                              Get.to(FeedbackScreen());
                            },
                            child: Text("Feedback", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400,color:Colors.white ),)),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 17,),
            Container(
              height: 80,
              width: 320,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 17),
                    child: Container(
                      height: 55,
                      width: 135,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 22, top: 15, left:55),
                        child: InkWell(
                            onTap: (){
                              Get.to(MonthlySlip());
                            },
                            child: Text("Fee", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400,color:Colors.white ),)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Container(
                      height: 55,
                      width: 135,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 13, top: 15, left:30),
                        child: InkWell(
                            onTap: (){
                              Get.to(OnlineExam());
                            },
                            child: Text("Online Test", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400,color:Colors.white ),)),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height:20),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text("Attendance Report", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 80),
                  child: InkWell(
                    onTap: (){
                      Get.to (AttendanceReport());
                    },
                      child: Text("View All", style: TextStyle(fontSize: 15,color: Colors.blue ),)),
                ),
              ],
            ),
            SizedBox(height:15),
            Container(
              height: 230,
              width: 280,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
              ),
            ),
            SizedBox(height:20),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text("Fee Slip", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 180),
                  child: InkWell(
                      onTap: (){
                        Get.to (MonthlySlip());
                      },
                      child: Text("View All", style: TextStyle(fontSize: 15,color: Colors.blue ),)),
                ),
              ],
            ),
            SizedBox(height:15),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
           Container(
             margin: EdgeInsets.only(left: 20),
             height: 200,
             width: 290,
             decoration: BoxDecoration(
               color: Colors.blueAccent,
               borderRadius: BorderRadius.circular(15)
             ),
             child: Column(
               children: [
                 Padding(
                   padding: const EdgeInsets.only(right: 210, top: 10),
                   child: Text("SLIP NO.", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500,color:Colors.grey.shade400 ),),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(right: 210,),
                   child: Text("#985", style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold, color: Colors.white),),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(right: 200, top: 15),
                   child: Text("GEN. DATE", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500,color:Colors.grey.shade400 ),),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(right: 150,),
                   child: Text("August-2023", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(right: 100, top: 15),
                   child: Text("FEE                  PAID         DUE", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500,color:Colors.grey.shade400  ),),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(right: 68,),
                   child: Text("₹0+400         ₹ 0         ₹ 400.00", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),),
                 ),
               ],
             ),
           ),
            Container(
              margin: EdgeInsets.only(left: 20),
              height: 200,
              width: 290,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 210, top: 10),
                    child: Text("SLIP NO.", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500,color:Colors.grey.shade400 ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 210,),
                    child: Text("#995", style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold, color: Colors.white),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 200, top: 15),
                    child: Text("GEN. DATE", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500,color:Colors.grey.shade400 ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 150,),
                    child: Text("August-2023", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 100, top: 15),
                    child: Text("FEE                  PAID         DUE", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500,color:Colors.grey.shade400  ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 68,),
                    child: Text("₹0+400         ₹ 0         ₹ 400.00", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              height: 200,
              width: 290,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 210, top: 10),
                    child: Text("SLIP NO.", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500,color:Colors.grey.shade400 ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 210,),
                    child: Text("#985", style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold, color: Colors.white),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 200, top: 15),
                    child: Text("GEN. DATE", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500,color:Colors.grey.shade400 ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 150,),
                    child: Text("August-2023", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 100, top: 15),
                    child: Text("FEE                  PAID         DUE", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500,color:Colors.grey.shade400  ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 68,),
                    child: Text("₹0+400         ₹ 0         ₹ 400.00", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              height: 200,
              width: 290,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 210, top: 10),
                    child: Text("SLIP NO.", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500,color:Colors.grey.shade400 ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 210,),
                    child: Text("#985", style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold, color: Colors.white),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 200, top: 15),
                    child: Text("GEN. DATE", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500,color:Colors.grey.shade400 ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 150,),
                    child: Text("August-2023", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 100, top: 15),
                    child: Text("FEE                  PAID         DUE", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500,color:Colors.grey.shade400  ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 68,),
                    child: Text("₹0+400         ₹ 0         ₹ 400.00", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              height: 200,
              width: 290,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 210, top: 10),
                    child: Text("SLIP NO.", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500,color:Colors.grey.shade400 ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 210,),
                    child: Text("#985", style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold, color: Colors.white),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 200, top: 15),
                    child: Text("GEN. DATE", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500,color:Colors.grey.shade400 ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 150,),
                    child: Text("August-2023", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 100, top: 15),
                    child: Text("FEE                  PAID         DUE", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500,color:Colors.grey.shade400  ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 68,),
                    child: Text("₹0+400         ₹ 0         ₹ 400.00", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              height: 200,
              width: 290,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 210, top: 10),
                    child: Text("SLIP NO.", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500,color:Colors.grey.shade400 ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 210,),
                    child: Text("#985", style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold, color: Colors.white),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 200, top: 15),
                    child: Text("GEN. DATE", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500,color:Colors.grey.shade400 ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 150,),
                    child: Text("August-2023", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 100, top: 15),
                    child: Text("FEE                  PAID         DUE", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500,color:Colors.grey.shade400  ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 68,),
                    child: Text("₹0+400         ₹ 0         ₹ 400.00", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 220),
              child: Text("Holiday List", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 20,),
            Container(
              height: 107,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  width: 2,
                  color: Colors.grey.shade300,
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15, left: 30),
                    child: Text("Copyright @ Dream Bell School 2024. All Rights       ",
                      style: TextStyle(fontSize: 14,fontWeight:FontWeight.w500), ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 38),
                    child: Text("Reserved.     ",
                      style: TextStyle(fontSize: 14,fontWeight:FontWeight.w500), ),
                  ),
                  SizedBox(height: 10,),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Managed by ',
                          style: TextStyle(color: Colors.grey[400],fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                        TextSpan(
                          text: 'School',
                          style: TextStyle(color: Colors.blue, fontSize: 14, fontWeight: FontWeight.w500),),
                        TextSpan(
                          text: '-',
                          style: TextStyle(color: Colors.red,fontSize: 14, fontWeight: FontWeight.w500),),
                        TextSpan(
                          text: 'Alarm',
                          style: TextStyle(color: Colors.green,fontSize: 14, fontWeight: FontWeight.w500),),
                        TextSpan(
                          text: '❤️',
                          style: TextStyle(color: Colors.red,fontSize: 14, fontWeight: FontWeight.w500),),
                      ],
                    ),
                  )

                ],

              ),
            ),
          ],
        ),

      ),
    );
  }
  buildNavigator() {
    return Navigator(
      key: navigatorKeys[_selectedIndex],
      onGenerateRoute: (RouteSettings settings){
        return MaterialPageRoute(builder: (_) => _widgetOptions.elementAt(_selectedIndex));
      },
    );
  }
}

