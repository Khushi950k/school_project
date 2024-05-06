import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:school_project/Screens/Student_detail.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController useridcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController departementcontroller = TextEditingController();

  void login(String Userid, password, department) async {
    try{
      var response = await http.post(Uri.parse("https://school-alarm.com/demo/api/login/user_login"),
    body:{
       "user_name":"User_Name",
       "password":"Password",
      "department":"Departement"
    }
      );
      if(response.statusCode == 200){
        Get.to(StudentDetail());
        print("account created successully");
      }else{
        print("failed");
      }
    }catch(e){
      print(e.toString());
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
body: SingleChildScrollView(
  child: Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(left:20, top: 80),
        child: SizedBox(
            height: 170,
            width: 130,
            child: Image.asset("assets/images/logo3.png")),
      ),
      Padding(
        padding: const EdgeInsets.only( left:20),
        child: Text("Dream Bell School", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.green),),
      ),
      Padding(
        padding: const EdgeInsets.only(left:25,),
        child: Text("with Abacus Classes", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600,),),
      ),
  Padding(
    padding: const EdgeInsets.only(top: 20, left: 20),
    child: Container(
      height: 230,
        width: 320,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: TextFormField(
              controller: useridcontroller,
              decoration: InputDecoration(
                  labelText: "User - ID",
                  labelStyle: TextStyle(color: Colors.black,),
                hintText: "Your user - id",
                hintStyle: TextStyle(color: Colors.grey,)
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: TextFormField(
              controller: passwordcontroller,
              decoration: InputDecoration(
                  labelText: "Password",
                  labelStyle: TextStyle(color: Colors.black,),
                  hintText: "Your Password",
                  hintStyle: TextStyle(color: Colors.grey,)
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: TextFormField(
              controller: departementcontroller,
              decoration: InputDecoration(
                  labelText: "Department",
                  labelStyle: TextStyle(color: Colors.black,),
                  hintText: "Your department",
                  hintStyle: TextStyle(color: Colors.grey,)
              ),
            ),
          ),
        ],
      ),
    ),
  ),
      SizedBox(height: 120,),
      Padding(
        padding: const EdgeInsets.only(left: 22),
        child: SizedBox(
          width: 320,
          height: 50,
          child: ElevatedButton(
              onPressed: (){
                login(useridcontroller.text.toString(),passwordcontroller.text.toString(),
                departementcontroller.text.toString());
               // Get.to(StudentDetail());
                },
              child: Text('Log in', style: TextStyle(color: Colors.white),),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>( Colors.blue),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
          ),
        ),
      )
      )
    ],
  ),
) ,
    );
  }
}
