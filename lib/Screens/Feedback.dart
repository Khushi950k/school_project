import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_project/Screens/Student_detail.dart';

class FeedbackScreen extends StatefulWidget {
  const FeedbackScreen({Key? key}) : super(key: key);

  @override
  State<FeedbackScreen> createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text("Feedback"),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Get.off(StudentDetail());
          },
          icon: Icon(Icons.arrow_back_ios, color: Colors.blue,),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: InkWell(
              onTap: (){
              },
              child: Container(
                //padding: EdgeInsets.all(10),
                height: 40,width: 90,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue
                ),
                child: Column(
                  children: [
                    Text("Add ", style: TextStyle(color: Colors.white),),
                    Text("Feedback", style: TextStyle(color: Colors.white),),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
     SingleChildScrollView(
       child: Padding(
         padding: const EdgeInsets.only(top: 20),
         child: Container(
          height: 190,
           width: 360,
           decoration: BoxDecoration(
             color: Colors.blueGrey.shade300,
             borderRadius: BorderRadius.circular(10)
           ),
           child: SingleChildScrollView(
             child: Column(
               children: [
                 Padding(
                   padding: const EdgeInsets.only(left: 300, top: 10),
                   child: Text("Post", style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w500),),
                 ),
                 SingleChildScrollView(
                   scrollDirection: Axis.horizontal,
                   child: Row(
                     children: [
                      Text("S.NO.", style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w500),),
                       SizedBox(width: 18,),
                       Text("title", style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w500),),
                       SizedBox(width: 30,),
                       Text("Description ", style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w500),),
                       SizedBox(width: 30,),
                       Text("Status        ", style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w500),),
                       SizedBox(width: 26,),
                       Text("Date", style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w500),),
                     ],
                   ),
                 ),
                 Divider(color: Colors.blueGrey,),
                 Row(
                   children: [
                     SizedBox(width: 10,),
                     Text("  1", style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w500),),
                     SizedBox(width: 42,),
                     Text("Demo", style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w500),),
                     SizedBox(width: 20,),
                     Text(" It is demo", style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w500),),
                     SizedBox(width: 30,),
                     Text("Answered", style: TextStyle(color: Colors.blueAccent, fontSize: 13 ,fontWeight: FontWeight.w500),),
                     SizedBox(width: 24,),
                     Text("    24,Feb", style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w500),),
                   ],
                 ),
                 Row(
                   children: [
                     SizedBox(width: 120,),
                     Text(" testing", style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w500),),
                     SizedBox(width: 148,),
                     Text("23", style: TextStyle(color: Colors.white, fontSize: 13 ,fontWeight: FontWeight.w500),),
                   ],
                 ),
                 Divider(color: Colors.blueGrey,),
                 Row(
                   children: [
                     SizedBox(width: 10,),
                     Text("  2", style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w500),),
                     SizedBox(width: 42,),
                     Text("Demo", style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w500),),
                     SizedBox(width: 20,),
                     Text(" It is demo", style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w500),),
                     SizedBox(width: 30,),
                     Text("Answered", style: TextStyle(color: Colors.blueAccent, fontSize: 13 ,fontWeight: FontWeight.w500),),
                     SizedBox(width: 24,),
                     Text("    08,Aug", style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w500),),
                   ],
                 ),
                 Row(
                   children: [
                     SizedBox(width: 120,),
                     Text(" testing", style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w500),),
                     SizedBox(width: 148,),
                     Text("22", style: TextStyle(color: Colors.white, fontSize: 13 ,fontWeight: FontWeight.w500),),
                   ],
                 ),
                 Padding(
                   padding: const EdgeInsets.only(right: 63),
                   child: Text("  feedback", style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w500),),
                 ),

               ],
             ),
           ),
       
         ),
       ),
     )
        ],
      ),
    );
  }
}
