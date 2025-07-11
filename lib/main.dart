import 'package:dev_01/Bnavigation.dart';
import 'package:dev_01/Calculator.dart';
import 'package:dev_01/ForgetPassword.dart';
import 'package:dev_01/HomeScreen.dart';
import 'package:dev_01/InstagramClone.dart';
import 'package:dev_01/SignUp.dart';
import 'package:dev_01/SplashScreen.dart';
import 'package:dev_01/login.dart';
import 'package:dev_01/project/home.dart';
import 'package:dev_01/project/homescreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home()
    );
  }
}
