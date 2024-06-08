import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_project/Screens/Notification.dart';
import 'package:school_project/Screens/Student_detail.dart';

class MonthlySlip extends StatefulWidget {
  const MonthlySlip({Key? key}) : super(key: key);

  @override
  State<MonthlySlip> createState() => _MonthlySlipState();
}

class _MonthlySlipState extends State<MonthlySlip> {
  bool onClick = false;
  bool onClick1 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text("Monthly Slip"),
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
          Container(
          height: 195,
          width: 360,
          decoration: BoxDecoration(
            color: Colors.greenAccent,
            border: Border.all(color: Colors.grey.shade400),
            borderRadius: BorderRadius.circular(10),
          ),
            child: Column(
              children: [
            Padding(
              padding: const EdgeInsets.only(top:10, right: 255),
              child: Text("From Date", style: TextStyle(fontSize: 15, color: Colors.white),),
            ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Container(
                        padding: const EdgeInsets.all(6),
                        height: 38,
                        width: 130,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Text("May", style: TextStyle(fontSize: 18, ),),
                      ),
                    ),
                    const SizedBox(width:4,),
                    Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Container(
                        padding: const EdgeInsets.all(6),
                        height: 38,
                        width: 170,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Text("2024", style: TextStyle(fontSize: 18, ),),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top:10, right: 275),
                  child: Text("To Date", style: TextStyle(fontSize: 15, color: Colors.white),),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Container(
                        padding: const EdgeInsets.all(6),
                        height: 38,
                        width: 130,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Text("May", style: TextStyle(fontSize: 18, ),),
                      ),
                    ),
                    const SizedBox(width:4,),
                    Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Container(
                        padding: const EdgeInsets.all(6),
                        height: 38,
                        width: 65,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Text("2024", style: TextStyle(fontSize: 18, ),),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Container(
                        padding: const EdgeInsets.all(6),
                        height: 38,
                        width: 75,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: InkWell(
                            onTap: (){
                              setState(() {
                                onClick  = !onClick;});
                            },
                            child: const Text("Search", style: TextStyle(fontSize: 15,color: Colors.white ),)),
                      ),
                    ),
                  ],
                ),
          ],
            ),
          ),
            if (onClick)
              Container(
                padding: const EdgeInsets.all(14),
                height: 244,
                width: 325,
                decoration: BoxDecoration(
                  color: Colors.blueGrey.shade200,
                  border: Border.all(color: Colors.grey.shade200),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 250),
                      child: IconButton(
                          onPressed: (){
                            setState(() {
                              onClick1  = !onClick1;});
                      }, icon: Icon(Icons.remove_red_eye,color: Colors.white,)),
                    ),
                    if (onClick1)
                      SingleChildScrollView(
                        child: Container(
                          height: 300,
                          width: 200,
                          color: Colors.blue,
                        ),
                      ),
                    Padding(
                      padding: const EdgeInsets.only(right: 65),
                      child: Text("SLIP NO       FROM DATE      TO DATE ", style: TextStyle(fontSize: 13,
                      fontWeight: FontWeight.w500, color: Colors.blueGrey),),
                    ),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3),
                          height: 25,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child:Text("#1890", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: Colors.white),),
                        ),
                        SizedBox(width: 27,),
                        Container(
                          padding: const EdgeInsets.all(3),
                          height: 25,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child:Text("May-24", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: Colors.white),),
                        ),
                        SizedBox(width: 33,),
                        Container(
                          padding: const EdgeInsets.all(3),
                          height: 25,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.orangeAccent,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child:Text("May-24", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: Colors.white),),
                        )
                      ],
                    ),
                    SizedBox(height: 15,),
                    Padding(
                      padding: const EdgeInsets.only(right: 180),
                      child: Text("FEE               PAID ", style: TextStyle(fontSize: 13,
                          fontWeight: FontWeight.w500, color: Colors.blueGrey),),
                    ),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3),
                          height: 25,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.pinkAccent,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child:Text(" ₹ 0+100", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: Colors.white),),
                        ),
                        SizedBox(width: 18,),
                        Container(
                          padding: const EdgeInsets.all(3),
                          height: 25,
                          width: 32,
                          decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child:Text(" ₹ 0", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: Colors.white),),
                        ),
                      ],
                    ),
                    SizedBox(height: 15,),
                    Padding(
                      padding: const EdgeInsets.only(right: 80),
                      child: Text("DUE               ADVANCE       TOTAL  ", style: TextStyle(fontSize: 13,
                          fontWeight: FontWeight.w500, color: Colors.blueGrey),),
                    ),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3),
                          height: 25,
                          width: 45,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child:Text(" ₹ 100", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: Colors.white),),
                        ),
                        SizedBox(width: 33,),
                        Container(
                          padding: const EdgeInsets.all(3),
                          height: 25,
                          width: 32,
                          decoration: BoxDecoration(
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child:Text(" ₹ 0", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: Colors.white),),
                        ),
                        SizedBox(width: 53,),
                        Container(
                          padding: const EdgeInsets.all(3),
                          height: 25,
                          width: 65,
                          decoration: BoxDecoration(
                            color: Colors.pinkAccent,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child:Text(" ₹ 100.00", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: Colors.white),),
                        )
                      ],
                    ),
                  ]
                ),
    ),
          ],
        ),
      ),
    );
  }
}
