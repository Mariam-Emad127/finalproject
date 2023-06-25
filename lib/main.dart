import 'package:final_project/doctor/Doctor.dart';
import 'package:final_project/home/choose1.dart';
import 'package:final_project/home/first_page.dart';
import 'package:final_project/governorates.dart';
import 'package:final_project/auth/login.dart';
import 'package:final_project/patient/patient.dart';
import 'package:final_project/patient/patientpage.dart';
import 'package:final_project/patient/question.dart';
import 'package:final_project/auth/signup.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:final_project/home/Choose.dart';
import 'package:final_project/doctor/classification.dart';
import 'package:final_project/splach_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';

late bool islogin;

void main() async {

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  //FirebaseMessaging.onBackgroundMessage(backgroudMessage) ;

  var user = FirebaseAuth.instance.currentUser;
  if (user == null) {
      islogin = false;
  } else {
      islogin = true;
  }
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: splash_screen(),
      debugShowCheckedModeBanner: false,
      routes: {
        "signup": (context) => signup(),
        "choose1": (context) => choose1(),
      },


    );
  }
}
