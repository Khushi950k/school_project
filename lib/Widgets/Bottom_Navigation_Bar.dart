// import 'package:flutter/cupertino.dart';
//  import 'package:flutter/material.dart';
// import 'package:school_project/Screens/Attendance_Report.dart';
// import 'package:school_project/Screens/Class_Activity.dart';
// import 'package:school_project/Screens/Dashboard.dart';
// import 'package:school_project/Screens/Exam_Schedule.dart';
// import 'package:school_project/Screens/Examination_Result.dart';
// import 'package:school_project/Screens/Monthly_Slip.dart';
// import 'package:school_project/Screens/Student_detail.dart';
// import 'package:school_project/Screens/Time_Table.dart';
// import 'package:school_project/Screens/profile_Screen.dart';
//
// class BottomNavigation extends StatefulWidget {
//   @override
//   _BottomNavigationState createState() => _BottomNavigationState();
// }
//
// class _BottomNavigationState extends State<BottomNavigation> {
//
//   int index = 0;
//   final Screen = [
//     StudentDetail(),
//     MonthlySlip(),
//     ExamSchedule(),
//     AttendanceReport(),
//     TimeTable(),
//     ProfileScreen(),
//
//   ];
//
//   @override
//   //Widget build(BuildContext context) =>
//       // CupertinoTabScaffold(
//       //     tabBar: CupertinoTabBar(
//       //       activeColor: Colors.grey,
//       //       items: <BottomNavigationBarItem>[
//       //         BottomNavigationBarItem(
//       //           icon: Icon(Icons.dashboard),
//       //           label: 'Dashboard',
//       //         ),
//       //         BottomNavigationBarItem(
//       //           icon: Icon(Icons.money),
//       //           label: 'Fees',
//       //         ),
//       //         BottomNavigationBarItem(
//       //           icon: Icon(Icons.camera_outlined),
//       //           label: 'Blog',
//       //         ),
//       //         BottomNavigationBarItem(
//       //           icon: Icon(Icons.av_timer),
//       //           label: 'Time Table',
//       //         ),
//       //         BottomNavigationBarItem(
//       //           icon: Icon(Icons.settings),
//       //           label: 'Settings',
//       //         ),
//       //       ],),
//       //     tabBuilder: (context, index) {
//       //       switch (index) {
//       //         case 0:
//       //           return CupertinoTabView(
//       //             builder: (context) {
//       //               return CupertinoPageScaffold(
//       //                   child: StudentDetail());
//       //             },
//       //           );
//       //         case 1:
//       //           return CupertinoTabView(
//       //             builder: (context) {
//       //               return CupertinoPageScaffold(
//       //                   child: MonthlySlip());
//       //             },
//       //           );
//       //         case 2:
//       //           return CupertinoTabView(
//       //             builder: (context) {
//       //               return CupertinoPageScaffold(
//       //                   child: AttendanceReport());
//       //             },
//       //           );
//       //         case 3:
//       //           return CupertinoTabView(
//       //             builder: (context) {
//       //               return CupertinoPageScaffold(
//       //                   child: ExamSchedule());
//       //             },
//       //           );
//       //         case 4:
//       //           return CupertinoTabView(
//       //             builder: (context) {
//       //               return CupertinoPageScaffold(
//       //                   child: ProfileScreen());
//       //             },
//       //           );
//       //         case 5:
//       //           return CupertinoTabView(
//       //             builder: (context) {
//       //               return CupertinoPageScaffold(
//       //                   child: ExaminationResult());
//       //             },
//       //           );
//       //       }
//       //       return Container();
//       //     }
//       // );
// //}
// //       Scaffold(
// //     body: Screen[index],
// //     bottomNavigationBar: NavigationBarTheme(
// //       data: NavigationBarThemeData(
// //         indicatorColor: Colors.blue.shade100,
// //         labelTextStyle: MaterialStateProperty.all(TextStyle(fontSize: 14, fontWeight: FontWeight.w500))
// //       ),
// //       child: NavigationBar(
// //         height: 60,
// //         backgroundColor: Colors.red.shade100,
// //         selectedIndex: index,
// //         onDestinationSelected: (index)=>
// //         setState((
// //
// //             ) =>this.index = index),
// //         destinations: [
// //           NavigationDestination(
// //        icon: Icon(Icons.dashboard), label: 'Dashboard',
// //           ),
// //           NavigationDestination(
// //             icon: Icon(Icons.money), label: 'Fees',
// //           ),
// //           NavigationDestination(
// //             icon: Icon(Icons.camera_outlined), label: 'Blog',
// //           ),
// //           NavigationDestination(
// //             icon: Icon(Icons.av_timer), label: 'Time Table',
// //           ),
// //           NavigationDestination(
// //             icon: Icon(Icons.settings), label: 'Settings',
// //           ),
// //
// //         ],
// //       ),
// //     ),
// //   );
// //   }
// // class CustomBottomNavBar extends StatelessWidget {
// //   final int currentIndex;
// //   final Function(int) onTap;
// //
// //   CustomBottomNavBar({
// //     required this.currentIndex,
// //     required this.onTap,
// //   });
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return BottomNavigationBar(
// //       items: const <BottomNavigationBarItem>[
// //         BottomNavigationBarItem(
// //           icon: Icon(Icons.home),
// //           label: 'Home',
// //         ),
// //         BottomNavigationBarItem(
// //           icon: Icon(Icons.search),
// //           label: 'Search',
// //         ),
// //         BottomNavigationBarItem(
// //           icon: Icon(Icons.person),
// //           label: 'Profile',
// //         ),
// //       ],
// //       currentIndex: currentIndex,
// //       selectedItemColor: Colors.blue,
// //       onTap: onTap,
// //     );
// //   }
// // }
