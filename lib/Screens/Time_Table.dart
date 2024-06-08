import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_project/Screens/Notification.dart';
import 'package:school_project/Screens/Student_detail.dart';

class TimeTable extends StatefulWidget {
  const TimeTable({Key? key}) : super(key: key);

  @override
  State<TimeTable> createState() => _TimeTableState();
}

class _TimeTableState extends State<TimeTable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text("Time Table"),
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
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Container(
            height: 1900,
            width: 320,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, right: 110),
                  child: Text("Pre Nursery II", style: TextStyle(fontSize: 18, color: Colors.blue, fontWeight: FontWeight.w500),),
                ),
                Divider(color: Colors.grey.shade300,),
                IntrinsicHeight(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 6, bottom: 6, left: 20),
                        child: Text("SUNDAY", style: TextStyle(fontSize: 14, color: Colors.grey.shade500, fontWeight: FontWeight.w500),),
                      ),
                      SizedBox(width: 20,),
                      VerticalDivider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6, bottom: 6, left: 20),
                        child: Text("Holiday", style: TextStyle(fontSize: 14, color: Colors.grey.shade500, fontWeight: FontWeight.w500),),
                      ),
                  
                    ],
                  ),
                ),
                Divider(color: Colors.grey.shade300,),
                IntrinsicHeight(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only( bottom: 6, left: 20),
                        child: Text("MONDAY", style: TextStyle(fontSize: 14, color: Colors.grey.shade500, fontWeight: FontWeight.w500),),
                      ),
                      SizedBox(width: 17,),
                      VerticalDivider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5.0),
                            height: 50,
                            width: 138,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text("Hindi Shristy Kumari 1st period", style: TextStyle(fontSize: 13, color: Colors.white,),),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            padding: const EdgeInsets.all(5.0),
                            height: 50,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text("English Manisha Kumari 2nd period", style: TextStyle(fontSize: 13, color: Colors.white,),),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            padding: const EdgeInsets.all(5.0),
                            height: 50,
                            width: 140,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text("Maths Anjali Kumari 3rd period", style: TextStyle(fontSize: 13, color: Colors.white,),),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            padding: const EdgeInsets.all(5.0),
                            height: 50,
                            width: 130,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text("Oral Madhu Kumari 4th period", style: TextStyle(fontSize: 13, color: Colors.white,),),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            padding: const EdgeInsets.all(5.0),
                            height: 50,
                            width: 130,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(" Monika Kumari 5th period", style: TextStyle(fontSize: 13, color: Colors.white,),),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Divider(color: Colors.grey.shade300,),
                IntrinsicHeight(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only( bottom: 6, left: 20),
                        child: Text("TUESDAY", style: TextStyle(fontSize: 14, color: Colors.grey.shade500, fontWeight: FontWeight.w500),),
                      ),
                      SizedBox(width: 17,),
                      VerticalDivider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5.0),
                            height: 50,
                            width: 138,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text("Hindi Shristy Kumari 1st period", style: TextStyle(fontSize: 13, color: Colors.white,),),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            padding: const EdgeInsets.all(5.0),
                            height: 50,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text("English Manisha Kumari 2nd period", style: TextStyle(fontSize: 13, color: Colors.white,),),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            padding: const EdgeInsets.all(5.0),
                            height: 50,
                            width: 140,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text("Maths Anjali Kumari 3rd period", style: TextStyle(fontSize: 13, color: Colors.white,),),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            padding: const EdgeInsets.all(5.0),
                            height: 50,
                            width: 130,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text("Oral Madhu Kumari 4th period", style: TextStyle(fontSize: 13, color: Colors.white,),),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            padding: const EdgeInsets.all(5.0),
                            height: 50,
                            width: 130,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(" Monika Kumari 5th period", style: TextStyle(fontSize: 13, color: Colors.white,),),
                          )
                        ],
                      )
                    ],
                  ),
                ),Divider(color: Colors.grey.shade300,),
                IntrinsicHeight(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only( bottom: 6, left: 16),
                        child: Text("WEDNESDAY", style: TextStyle(fontSize: 14, color: Colors.grey.shade500, fontWeight: FontWeight.w500),),
                      ),
                      SizedBox(width: 0,),
                      VerticalDivider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5.0),
                            height: 50,
                            width: 138,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text("Hindi Shristy Kumari 1st period", style: TextStyle(fontSize: 13, color: Colors.white,),),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            padding: const EdgeInsets.all(5.0),
                            height: 50,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text("English Manisha Kumari 2nd period", style: TextStyle(fontSize: 13, color: Colors.white,),),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            padding: const EdgeInsets.all(5.0),
                            height: 50,
                            width: 140,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text("Maths Anjali Kumari 3rd period", style: TextStyle(fontSize: 13, color: Colors.white,),),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            padding: const EdgeInsets.all(5.0),
                            height: 50,
                            width: 130,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text("Oral Madhu Kumari 4th period", style: TextStyle(fontSize: 13, color: Colors.white,),),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            padding: const EdgeInsets.all(5.0),
                            height: 50,
                            width: 130,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(" Monika Kumari 5th period", style: TextStyle(fontSize: 13, color: Colors.white,),),
                          )
                        ],
                      )
                    ],
                  ),
                ),Divider(color: Colors.grey.shade300,),
                IntrinsicHeight(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only( bottom: 6, left: 20),
                        child: Text("THURSDAY", style: TextStyle(fontSize: 14, color: Colors.grey.shade500, fontWeight: FontWeight.w500),),
                      ),
                      SizedBox(width: 8,),
                      VerticalDivider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5.0),
                            height: 50,
                            width: 138,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text("Hindi Shristy Kumari 1st period", style: TextStyle(fontSize: 13, color: Colors.white,),),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            padding: const EdgeInsets.all(5.0),
                            height: 50,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text("English Manisha Kumari 2nd period", style: TextStyle(fontSize: 13, color: Colors.white,),),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            padding: const EdgeInsets.all(5.0),
                            height: 50,
                            width: 140,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text("Maths Anjali Kumari 3rd period", style: TextStyle(fontSize: 13, color: Colors.white,),),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            padding: const EdgeInsets.all(5.0),
                            height: 50,
                            width: 130,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text("Oral Madhu Kumari 4th period", style: TextStyle(fontSize: 13, color: Colors.white,),),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            padding: const EdgeInsets.all(5.0),
                            height: 50,
                            width: 130,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(" Monika Kumari 5th period", style: TextStyle(fontSize: 13, color: Colors.white,),),
                          )
                        ],
                      )
                    ],
                  ),
                ),Divider(color: Colors.grey.shade300,),
                IntrinsicHeight(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only( bottom: 6, left: 20),
                        child: Text("FRIDAY", style: TextStyle(fontSize: 14, color: Colors.grey.shade500, fontWeight: FontWeight.w500),),
                      ),
                      SizedBox(width: 33,),
                      VerticalDivider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5.0),
                            height: 50,
                            width: 138,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text("Hindi Shristy Kumari 1st period", style: TextStyle(fontSize: 13, color: Colors.white,),),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            padding: const EdgeInsets.all(5.0),
                            height: 50,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text("English Manisha Kumari 2nd period", style: TextStyle(fontSize: 13, color: Colors.white,),),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            padding: const EdgeInsets.all(5.0),
                            height: 50,
                            width: 140,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text("Maths Anjali Kumari 3rd period", style: TextStyle(fontSize: 13, color: Colors.white,),),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            padding: const EdgeInsets.all(5.0),
                            height: 50,
                            width: 130,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text("Oral Madhu Kumari 4th period", style: TextStyle(fontSize: 13, color: Colors.white,),),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            padding: const EdgeInsets.all(5.0),
                            height: 50,
                            width: 130,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(" Monika Kumari 5th period", style: TextStyle(fontSize: 13, color: Colors.white,),),
                          )
                        ],
                      )
                    ],
                  ),
                ),Divider(color: Colors.grey.shade300,),
                IntrinsicHeight(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only( bottom: 6, left: 20),
                        child: Text("SATURDAY", style: TextStyle(fontSize: 14, color: Colors.grey.shade500, fontWeight: FontWeight.w500),),
                      ),
                      SizedBox(width: 10,),
                      VerticalDivider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5.0),
                            height: 50,
                            width: 138,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text("Drawing Shristy Kumari 1st period", style: TextStyle(fontSize: 13, color: Colors.white,),),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            padding: const EdgeInsets.all(5.0),
                            height: 50,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text("Game Manisha Kumari 2nd period", style: TextStyle(fontSize: 13, color: Colors.white,),),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            padding: const EdgeInsets.all(5.0),
                            height: 50,
                            width: 140,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text("Dance Anjali Kumari 3rd period", style: TextStyle(fontSize: 13, color: Colors.white,),),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            padding: const EdgeInsets.all(5.0),
                            height: 50,
                            width: 130,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text("Oral Madhu Kumari 4th period", style: TextStyle(fontSize: 13, color: Colors.white,),),
                          ),
                        ],
                      )
                    ],
                  ),
                ),

              ],
            ),
          ),
        )
          ],
        ),
      ),
    );
  }
}
