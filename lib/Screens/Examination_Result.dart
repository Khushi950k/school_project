import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_project/Screens/Student_detail.dart';

class ExaminationResult extends StatefulWidget {
  const ExaminationResult({Key? key}) : super(key: key);

  @override
  State<ExaminationResult> createState() => _ExaminationResultState();
}

class _ExaminationResultState extends State<ExaminationResult> {
  bool onClick = false;
  String dropdownvalue = 'TERM-1';
  var items = [
    'TERM-1',
    'TERM-2',
    'FA-4',
    'FA-3',
    'FA-2',
    'FA-1',

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: const Text("Examination Result"),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Get.off(const StudentDetail());
          },
          icon: const Icon(Icons.arrow_back_ios, color: Colors.blue,),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 70,
              width: 360,
              decoration: BoxDecoration(
                color: Colors.blueGrey.shade400,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Padding(
               padding: const EdgeInsets.all(13.0),
                    child: Container(
                  padding: const EdgeInsets.all(8),
                  height: 45,
                  width: 80,
                  decoration: BoxDecoration(
                  color: Colors.white,
                       borderRadius: BorderRadius.circular(5),
              ),
                // child: const Text("TERM-I", style: TextStyle(fontSize: 18, ),),
                      child:DropdownButton(
                        value: dropdownvalue,
                        items: items.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownvalue = newValue!;
                          });
                        },
                      ),
                 ),
                  ),
                   const SizedBox(width:4,),
                  Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      height: 45,
                      width: 120,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Text("2024 - 2025", style: TextStyle(fontSize: 18, ),),
                    ),
                  ),
                 Padding(
                padding: const EdgeInsets.all(13.0),
                  child: Container(
                  padding: const EdgeInsets.only(left: 17, top: 7),
                   height: 45,
                 width: 72,
                  decoration: BoxDecoration(
                  color: Colors.green,
                   borderRadius: BorderRadius.circular(14),
                 ),
                    child: InkWell(
                        onTap: (){
                          setState(() {
                            onClick  = !onClick;});
                        },
                        child: const Padding(
                          padding: EdgeInsets.only( top:3),
                          child: Text("SHOW", style: TextStyle(fontSize: 15, color: Colors.white),),
                        )),
                ),
                 )
                ],
              ),
            ),
            if (onClick)
              Container(
                padding: const EdgeInsets.all(15),
                height: 100,
                width: 360,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                ),
                child:  Container(
                  padding: const EdgeInsets.all(20),
                  height: 30,
                  width: 320,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text("Result Not Found!!!",style:TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white) ,),
                ),
              )

          ],
        ),
      ),
    );
  }
}
