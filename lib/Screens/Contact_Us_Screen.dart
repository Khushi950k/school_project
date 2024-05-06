import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_project/Screens/Home_Screen.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text("Contact Us"),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Get.off(HomeScreen());
          },
          icon: Icon(Icons.arrow_back_ios, color: Colors.blue,),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.phone_outlined,color: Colors.blue,),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20),
            child: Container(
              height: 450,
              width: 320,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                children: [
                  SizedBox(height: 20,),
                Text("Get in Touch", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),),
                  Text("Fill the form to contact us", style: TextStyle(fontSize: 15, color: Colors.grey ),),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "Your name",
                          labelStyle: TextStyle(color: Colors.grey,)
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: "E-mail",
                          labelStyle: TextStyle(color: Colors.grey,)
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: "Message",
                        labelStyle: TextStyle(color: Colors.grey,),
                       //contentPadding: EdgeInsets.only( top: 20, bottom: 80)
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  SizedBox(
                    width: 280,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: (){},
                      child: Text('Send', style: TextStyle(color: Colors.white),),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>( Colors.blue),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      )
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 20),
            child: Container(
              height: 120,
              width: 320,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                children: [
                  SizedBox(height: 10,),
                  Text("Our Address", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),),
                  SizedBox(height: 8,),
                  Text("VILL+PO+PS - DANIAWAN PATNA", style: TextStyle(fontSize: 15, color: Colors.grey ),),
                 SizedBox(height: 3,),
                  Text("patna 801304 BIHAR India", style: TextStyle(fontSize: 15, color: Colors.grey ),),

                ],
              ),
            ),
          )
        ],
      ),

    );
  }
}
