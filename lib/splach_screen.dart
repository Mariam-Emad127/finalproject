import 'package:flutter/material.dart';
import 'package:final_project/auth/login.dart';
import 'dart:async';
import 'package:final_project/home/first_page.dart';
class splash_screen extends StatefulWidget {
  const splash_screen({super.key}) ;

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder:(context){
        return loginScreen();
      }));
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff439be8),
      body: Center(
        child: Image(
          image: AssetImage("assets/images/Family-Medicine.jpg"),
        ),
      ),
    );
  }
}