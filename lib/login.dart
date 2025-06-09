import 'package:dev_01/ForgetPassword.dart';
import 'package:dev_01/HomeScreen.dart';
import 'package:dev_01/SignUp.dart';
import 'package:dev_01/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset('assets/animations/animation-3.json',height: 200),
            Text("Login", style: TextStyle(fontSize: 50)),
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
                    labelStyle: TextStyle(color: Colors.black),
                    hintText: "Enter Email",
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    label: Text('Password'),
                    labelStyle: TextStyle(color: Colors.black),
                    hintText: "Enter Password",
                    focusedBorder : OutlineInputBorder(
                      borderSide:BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Forgetpassword()),
                  );
                },
                child: Text(
                  "Forget Password ?",
                  style: TextStyle(fontSize: 14,color: Colors.blue),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                height: 40,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Homescreen()));
                  },
                  color: Colors.black,
                  textColor: Colors.white,
                  minWidth: 100,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text("Login"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(1),
                child: Text(
                  "Don't Have Account ?",
                  style: TextStyle(fontSize: 14),
                ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Splashscreen()),
                  );
                },
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>siUp()));
                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 14,color: Colors.blue),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
