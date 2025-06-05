
import 'package:dev_01/login.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'SplashScreen.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            Lottie.asset('assets/animations/animation-2.json',height: 200),
            Text("Sign Up", style: TextStyle(fontSize: 50)),
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
                    label: Text('Password'),
                    hintText: "Enter Password",
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

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    label: Text('Confirm Password'),
                    hintText: "Confirm Password",
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
                  child: Text("Sign Up"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(1),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Splashscreen()),
                  );
                },
                child: Text(
                  "Already Have Account ?",
                  style: TextStyle(fontSize: 14),
                ),
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
                child: InkWell(onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => login()));
                },
                  child: Text(
                    "Login",
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
