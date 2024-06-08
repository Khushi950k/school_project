import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_project/Screens/Student_detail.dart';

class AttendanceReport extends StatefulWidget {
  const AttendanceReport({Key? key}) : super(key: key);

  @override
  State<AttendanceReport> createState() => _AttendanceReportState();
}

class _AttendanceReportState extends State<AttendanceReport> {
  bool onClick = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: const Text("Attendance Report"),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Get.off(StudentDetail());
          },
          icon: Icon(Icons.arrow_back_ios, color: Colors.blue,),
        ),
      ),
      body: SingleChildScrollView(
       child: Center(
         child: Padding(
           padding: const EdgeInsets.only(top: 20),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Container(
                 height: 65,
                 width: 320,
                 decoration: BoxDecoration(
                   color: Colors.greenAccent,
                   borderRadius: BorderRadius.circular(10),
                 ),
                 child: Row(
                   children: [
                     Padding(
                       padding: const EdgeInsets.all(13.0),
                       child: Container(
                         padding: const EdgeInsets.all(6),
                         height: 40,
                         width: 100,
                         decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.circular(5),
                         ),
                         child: Text("2024", style: TextStyle(fontSize: 20, ),),
                       ),
                     ),
                     SizedBox(width: 10,),
                     Padding(
                       padding: const EdgeInsets.all(13.0),
                       child: Container(
                         padding: const EdgeInsets.only(left: 17, top: 7),
                         height: 40,
                         width: 120,
                         decoration: BoxDecoration(
                           color: Colors.black,
                           borderRadius: BorderRadius.circular(10),
                         ),
                         child: InkWell(
                           onTap: (){
                      setState(() {
                        onClick  = !onClick;});
                           },
                             child: Text("View Report", style: TextStyle(fontSize: 15, color: Colors.white),)),
                       ),
                     ),
                   ],
                 ),
               ),
               if (onClick)
                 Container(
                   padding: const EdgeInsets.all(15),
                   height: 450,
                   width: 320,
                   decoration: BoxDecoration(
                     color: Colors.white,
                     border: Border.all(color: Colors.grey.shade200),
                     borderRadius: BorderRadius.circular(10),
                   ),
                   child:  Container(
                    // padding: const EdgeInsets.only()),
                     height: 400,
                     width: 320,
                     decoration: BoxDecoration(
                       border: Border.all(color: Colors.grey.shade100),
                       color: Colors.white60,
                       borderRadius: BorderRadius.circular(10),
                     ),
                     child: SingleChildScrollView(
                       child: Column(
                         children: [
                           const SizedBox(height: 10,),
                           const Text("Month        Days     Sunday     Holiday", style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w500),),
                      SizedBox(height: 10,),
                     Container(
                       height: 313,
                       width: 300,
                       decoration: BoxDecoration(
                         //border: Border.all(color: Colors.grey.shade400),
                         color: Colors.grey.shade100,
                       ),
                       child: Column(
                         children: [
                           SizedBox(height: 5,),
                           Row(
                             children: [
                               Column(
                                 children: [
                                   Text("  January ", style: TextStyle(fontSize: 15, color: Colors.grey, fontWeight: FontWeight.w500),),
                                   Text(":: 2024", style: TextStyle(fontSize: 15, color: Colors.grey, fontWeight: FontWeight.w500),),
                                 ],
                               ),
                               SizedBox(width: 23,),
                               Container(
                                 height: 28,
                                 width: 28,
                                 decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(15),
                                   color: Colors.orangeAccent,
                                 ),
                                 child:Padding(
                                   padding: const EdgeInsets.only(left: 6, top: 3),
                                   child: Text("31", style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w500),),
                                 ),
                               ),
                               SizedBox(width: 34,),
                               Container(
                                 height: 28,
                                 width: 28,
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(15),
                                   color: Colors.pinkAccent,
                                 ),
                                 child:Padding(
                                   padding: const EdgeInsets.only(left: 8, top: 3),
                                   child: Text("4", style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w500),),
                                 ),
                               ),
                               SizedBox(width: 40,),
                               Container(
                                 height: 28,
                                 width: 28,
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(15),
                                   color: Colors.greenAccent,
                                 ),
                                 child:Padding(
                                   padding: const EdgeInsets.only(left: 9, top: 3),
                                   child: Text("0", style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w500),),
                                 ),
                               ),
                             ],
                           ),
                           Divider(color: Colors.grey,),
                           SizedBox(height: 5,),
                           Row(
                             children: [
                               Column(
                                 children: [
                                   Text("  February ", style: TextStyle(fontSize: 15, color: Colors.grey, fontWeight: FontWeight.w500),),
                                   Text(":: 2024", style: TextStyle(fontSize: 15, color: Colors.grey, fontWeight: FontWeight.w500),),
                                 ],
                               ),
                               SizedBox(width: 20,),
                               Container(
                                 height: 28,
                                 width: 28,
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(15),
                                   color: Colors.orangeAccent,
                                 ),
                                 child:Padding(
                                   padding: const EdgeInsets.only(left: 6, top: 3),
                                   child: Text("29", style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w500),),
                                 ),
                               ),
                               SizedBox(width: 34,),
                               Container(
                                 height: 28,
                                 width: 28,
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(15),
                                   color: Colors.pinkAccent,
                                 ),
                                 child:Padding(
                                   padding: const EdgeInsets.only(left: 8, top: 3),
                                   child: Text("4", style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w500),),
                                 ),
                               ),
                               SizedBox(width: 40,),
                               Container(
                                 height: 28,
                                 width: 28,
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(15),
                                   color: Colors.greenAccent,
                                 ),
                                 child:Padding(
                                   padding: const EdgeInsets.only(left: 9, top: 3),
                                   child: Text("0", style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w500),),
                                 ),
                               ),
                             ],
                           ),
                           Divider(color: Colors.grey,),
                           SizedBox(height: 5,),
                           Row(
                             children: [
                               Column(
                                 children: [
                                   Text("  March ::", style: TextStyle(fontSize: 15, color: Colors.grey, fontWeight: FontWeight.w500),),
                                   Text("2024", style: TextStyle(fontSize: 15, color: Colors.grey, fontWeight: FontWeight.w500),),
                                 ],
                               ),
                               SizedBox(width: 29,),
                               Container(
                                 height: 28,
                                 width: 28,
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(15),
                                   color: Colors.orangeAccent,
                                 ),
                                 child:Padding(
                                   padding: const EdgeInsets.only(left: 6, top: 3),
                                   child: Text("31", style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w500),),
                                 ),
                               ),
                               SizedBox(width: 34,),
                               Container(
                                 height: 28,
                                 width: 28,
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(15),
                                   color: Colors.pinkAccent,
                                 ),
                                 child:Padding(
                                   padding: const EdgeInsets.only(left: 8, top: 3),
                                   child: Text("5", style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w500),),
                                 ),
                               ),
                               SizedBox(width: 40,),
                               Container(
                                 height: 28,
                                 width: 28,
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(15),
                                   color: Colors.greenAccent,
                                 ),
                                 child:Padding(
                                   padding: const EdgeInsets.only(left: 9, top: 3),
                                   child: Text("0", style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w500),),
                                 ),
                               ),
                             ],
                           ),
                           Divider(color: Colors.grey,),
                           SizedBox(height: 5,),
                           Row(
                             children: [
                               Column(
                                 children: [
                                   Text("  April :: ", style: TextStyle(fontSize: 15, color: Colors.grey, fontWeight: FontWeight.w500),),
                                   Text("2024", style: TextStyle(fontSize: 15, color: Colors.grey, fontWeight: FontWeight.w500),),
                                 ],
                               ),
                               SizedBox(width: 38,),
                               Container(
                                 height: 28,
                                 width: 28,
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(15),
                                   color: Colors.orangeAccent,
                                 ),
                                 child:Padding(
                                   padding: const EdgeInsets.only(left: 6, top: 3),
                                   child: Text("30", style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w500),),
                                 ),
                               ),
                               SizedBox(width: 34,),
                               Container(
                                 height: 28,
                                 width: 28,
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(15),
                                   color: Colors.pinkAccent,
                                 ),
                                 child:Padding(
                                   padding: const EdgeInsets.only(left: 8, top: 3),
                                   child: Text("4", style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w500),),
                                 ),
                               ),
                               SizedBox(width: 40,),
                               Container(
                                 height: 28,
                                 width: 28,
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(15),
                                   color: Colors.greenAccent,
                                 ),
                                 child:Padding(
                                   padding: const EdgeInsets.only(left: 9, top: 3),
                                   child: Text("0", style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w500),),
                                 ),
                               ),
                             ],
                           ),
                           Divider(color: Colors.grey,),
                           SizedBox(height: 5,),
                           Row(
                             children: [
                               Column(
                                 children: [
                                   Text("  May :: ", style: TextStyle(fontSize: 15, color: Colors.grey, fontWeight: FontWeight.w500),),
                                   Text(" 2024", style: TextStyle(fontSize: 15, color: Colors.grey, fontWeight: FontWeight.w500),),
                                 ],
                               ),
                               SizedBox(width: 43,),
                               Container(
                                 height: 28,
                                 width: 28,
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(15),
                                   color: Colors.orangeAccent,
                                 ),
                                 child:Padding(
                                   padding: const EdgeInsets.only(left: 6, top: 3),
                                   child: Text("31", style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w500),),
                                 ),
                               ),
                               SizedBox(width: 34,),
                               Container(
                                 height: 28,
                                 width: 28,
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(15),
                                   color: Colors.pinkAccent,
                                 ),
                                 child:Padding(
                                   padding: const EdgeInsets.only(left: 8, top: 3),
                                   child: Text("4", style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w500),),
                                 ),
                               ),
                               SizedBox(width: 40,),
                               Container(
                                 height: 28,
                                 width: 28,
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(15),
                                   color: Colors.greenAccent,
                                 ),
                                 child:Padding(
                                   padding: const EdgeInsets.only(left: 9, top: 3),
                                   child: Text("0", style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w500),),
                                 ),
                               ),
                             ],
                           ),
                         ],
                       ),
                     ),
                           SizedBox(height: 10,),
                           Row(
                             children: [
                               Column(
                                 children: [
                                   Text("  GRAND", style: TextStyle(fontSize: 15, color: Colors.grey, fontWeight: FontWeight.w400),),
                                   Text("  TOTAL", style: TextStyle(fontSize: 15, color: Colors.grey, fontWeight: FontWeight.w400),),
                                 ],
                               ),
                               SizedBox(width: 38,),
                               Container(
                                 height: 28,
                                 width: 40,
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(15),
                                   color: Colors.pink,
                                 ),
                                 child:Padding(
                                   padding: const EdgeInsets.only(left: 6, top: 3),
                                   child: Text("152", style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w500),),
                                 ),
                               ),
                               SizedBox(width: 23,),
                               Container(
                                 height: 28,
                                 width: 28,
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(15),
                                   color: Colors.green,
                                 ),
                                 child:Padding(
                                   padding: const EdgeInsets.only(left:5, top: 3),
                                   child: Text("21", style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w500),),
                                 ),
                               ),
                               SizedBox(width: 40,),
                               Container(
                                 height: 28,
                                 width: 28,
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(15),
                                   color: Colors.black,
                                 ),
                                 child:Padding(
                                   padding: const EdgeInsets.only(left: 9, top: 3),
                                   child: Text("0", style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w500),),
                                 ),
                               ),
                             ],
                           ),
                          ],
                       ),
                     ),
                   ),

                 ),
             ],
           ),
         ),
       ),
      ),
    );
  }
}
