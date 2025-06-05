import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'SignUp.dart';

import 'SplashScreen.dart';
class Forgetpassword extends StatefulWidget {
  const Forgetpassword({super.key});

  @override
  State<Forgetpassword> createState() => _ForgetpasswordState();
}

class _ForgetpasswordState extends State<Forgetpassword> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset('assets/animations/animation-1.json',height: 200),
            Text("Forget Password", style: TextStyle(fontSize: 40)),
            Text("Enter Email To Send Forget Password Link"),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    focusedBorder : OutlineInputBorder(
                      borderSide:BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    label: Text('Email'),
                    hintText: "Enter Email",
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                height: 40,
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.black,
                  textColor: Colors.white,
                  minWidth: 100,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text("Send Link"),
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
