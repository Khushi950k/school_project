import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_project/Screens/Splash_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(),
        home:Splash_screen()
    );
  }
}

