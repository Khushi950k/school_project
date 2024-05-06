
//import 'dart:ffi';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_project/Controller/SliderController.dart';
//import 'package:school_project/Controller/user_controller.dart';
import 'package:school_project/Screens/About_school.dart';
import 'package:school_project/Screens/Contact_Us_Screen.dart';
import 'package:school_project/Screens/Login_page.dart';
import 'package:school_project/Screens/Members.dart';
import 'package:school_project/Screens/Principal_desk.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var sliderController = Get.put(SliderController());

  @override
  Widget build(BuildContext context) {
    TextEditingController namecontroller = TextEditingController();
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        appBar: AppBar(
          title: Text("Dream Bell School", style: TextStyle(color:Colors.white),),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
        ),
        body:SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left:55,right: 50),
                child: SizedBox(
                    height: 100,
                    width: 80,
                    child: Image.asset("assets/images/logo3.png")),
              ),
              Padding(
                padding: const EdgeInsets.only(left:20, right: 20),
                child: Container(
                  height: 55,
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      color: Colors.white.withOpacity(.6)),
                  child: Padding(
                    padding: const EdgeInsets.only(left:20),
                    child: TextField(
                      controller: namecontroller,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          hintText: "TIME TO WAKE UP",
                          hintStyle: TextStyle(color: Colors.black.withOpacity(.5)),
                          border: InputBorder.none),
                    ),
                  ),
                ),
              ),
              const SizedBox(height:3,),
              SizedBox(
                height: 200,
                child: ListView(
                  children: [
                    CarouselSlider(
                      items:[
                        Obx((){
                          if(sliderController.isLoading.value){
                            return Center(child: CircularProgressIndicator());
                          }
                          return SizedBox(
                            child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: sliderController.usersList.length,
                                itemBuilder: (context, index){
                                  return Column(
                                    children: [
                                      SizedBox(height: 8,),
                                      Container(child: Image.network("${sliderController.usersList[index].key[0].photo}")),
                                      Container(child: Image.network("${sliderController.usersList[index].key[1].photo}")),
                                      Container(child: Image.network("${sliderController.usersList[index].key[2].photo}")),
                                      Container(child: Image.network("${sliderController.usersList[index].key[3].photo}")),
                                    ],
                                  );
                                }),
                          );
                        }),
                      // Container(
                      //   margin: const EdgeInsets.all(6.0),
                      //   decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(8.0),
                      //     image: const DecorationImage(
                      //       image: NetworkImage(
                      //           "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToVze-IW4dcWbH6O8mJ6cSJJHOk1X_xh92pw&usqp=CAU"),
                      //       fit: BoxFit.cover,
                      //     ),
                      //   ),
                      // ),
                      //   Container(
                      //     margin: const EdgeInsets.all(6.0),
                      //     decoration: BoxDecoration(
                      //       borderRadius: BorderRadius.circular(8.0),
                      //       image: const DecorationImage(
                      //         image: NetworkImage(
                      //             "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8sFOYId-VzA3vZzDOhJRGhVnDX7cH2hgLqQEsP3HEEzKcMktXBnbRinzZGqf3r2n_xjY&usqp=CAU"),
                      //         fit: BoxFit.cover,
                      //       ),
                      //     ),
                      //   ),
                      //
                      //   Container(
                      //     margin: const EdgeInsets.all(6.0),
                      //     decoration: BoxDecoration(
                      //       borderRadius: BorderRadius.circular(8.0),
                      //       image: const DecorationImage(
                      //         image: NetworkImage(
                      //             "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLlUDBuFY8W1ubr7fc4u4WXKJw9CLTALQ883rAADqoxosZQi9-hjafDv0LfpBf4ZwANf8&usqp=CAU"),
                      //         fit: BoxFit.cover,
                      //       ),
                      //     ),
                      //   )
                    ], options: CarouselOptions(
                      height: 200.0,
                       enlargeCenterPage: true,
                       autoPlay: true,
                      aspectRatio: 16 / 9,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration: const Duration(milliseconds: 300),
                      viewportFraction: 0.8,
                    ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 8,),
              Container(
                height: 200,
                width: 320,
                decoration: BoxDecoration(
                  color:Colors.white ,
                  borderRadius: BorderRadius.only(topLeft:Radius.circular(10.0),topRight: Radius.circular(10.0),),
                  border: Border(
                    left: BorderSide(color: Colors.grey.shade300, width: 2,),
                    right: BorderSide(color: Colors.grey.shade300, width: 2,),
                    top: BorderSide(color: Colors.grey.shade300, width: 2,),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 35, top:20),
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.red
                            ),
                            child: GestureDetector(
                                onTap:() {
                               Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => LoginPage()));},
                                child: Icon(Icons.login, color: Colors.white,))
                          ),
                        ),
                       SizedBox(width: 20,),
                        Padding(
                          padding: EdgeInsets.only(left: 24, top:20),
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.blue
                            ),
                              child: GestureDetector(
                                  onTap:() {
                                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => PrincipalDesk()));},
                                  child: Icon(Icons.email_outlined, color: Colors.white,))
                          ),
                        ),
                        SizedBox(width: 20,),
                        Padding(
                          padding: EdgeInsets.only(left: 24, top:20),
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.green
                            ),
                              child: GestureDetector(
                                  onTap:() {
                                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => AboutSchool()));},
                                  child: Icon(Icons.account_balance_outlined, color: Colors.white,))
                          ),
                        ),
                       //  Expanded(
                       //    child: Padding(
                       //      padding: EdgeInsets.only(left:1, top: 20 ),
                       //      child: Container(
                       //        height: 50,
                       //        width: 50,
                       //            child: GestureDetector(
                       //                onTap: () {
                       //                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => LoginPage()));
                       //                },
                       //                child: Image.asset("assets/images/login.png"),)),
                       //    ),
                       //        ),
                       //
                       //  Expanded(
                       //    child: Padding(
                       //      padding: EdgeInsets.only(right:100, top: 20 ),
                       //      child: Container(
                       //          height: 50,
                       //          width: 50,
                       //          child: GestureDetector(
                       //            onTap: () {
                       //              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => LoginPage()));
                       //            },
                       //            child: Image.asset("assets/images/Email.png"),)),
                       //    ),
                       //  ),
                       //  Expanded(
                       //    child: Padding(
                       //      padding: EdgeInsets.only(right:10, top: 20 ),
                       //      child: Container(
                       //          height: 60,
                       //          width: 50,
                       //          color: Colors.yellow,
                       //        child: GestureDetector(
                       //            onTap:() {
                       // Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => LoginPage()));},
                       //            child: Icon(Icons.email))
                       //      ),
                       //    ),
                       //  ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        SizedBox(width: 42),
                        Text("Login", style: TextStyle(fontSize: 13, fontWeight:FontWeight.w500),),
                        SizedBox(width: 25),
                        Text("Principal's Desk",style: TextStyle(fontSize: 13,fontWeight:FontWeight.w500),),
                        SizedBox(width: 15),
                        Text("About School",style: TextStyle(fontSize: 13,fontWeight:FontWeight.w500),)
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 35, top:20),
                          child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.greenAccent
                              ),
                              child: GestureDetector(
                                  onTap:() {
                                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => MembersScreen()));},
                                  child: Icon(Icons.person_add_alt_1_sharp, color: Colors.white,))
                          ),
                        ),
                        SizedBox(width: 20,),
                        Padding(
                          padding: EdgeInsets.only(left: 24, top:20),
                          child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.yellow
                              ),
                              child: GestureDetector(
                                  onTap:() {
                                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => ContactUs()));},
                                  child: Icon(Icons.location_searching, color: Colors.white,))
                          ),
                        ),
                        SizedBox(width: 20,),
                        Padding(
                          padding: EdgeInsets.only(left: 24, top:20),
                          child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.black
                              ),
                              child: GestureDetector(
                                  onTap:() {
                                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => AboutSchool()));},
                                  child: Icon(Icons.pages, color: Colors.white,))
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        SizedBox(width: 32),
                        Text("Member's", style: TextStyle(fontSize: 13, fontWeight:FontWeight.w500),),
                        SizedBox(width: 30),
                        Text("Contact Us",style: TextStyle(fontSize: 13,fontWeight:FontWeight.w500),),
                        SizedBox(width: 25),
                        Text("Notice Board",style: TextStyle(fontSize: 13,fontWeight:FontWeight.w500),)
                      ],
                    ),
                  ],
                ),
              ),
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
         )
             ],
          ),
        ),
    );
  }
}

