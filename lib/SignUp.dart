import 'package:dev_01/HomeScreen.dart';
import 'package:dev_01/login.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'colors.dart';

class siUp extends StatefulWidget {
  const siUp({super.key});

  @override
  State<siUp> createState() => _siUpState();
}

class _siUpState extends State<siUp> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.deep_black,
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset('assets/animations/animation-2.json',height: 200),
            Text("Register Now ", style: TextStyle(fontSize: 50,color: AppColors.royal_gold)),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email,color: AppColors.royal_gold,),
                    focusedBorder : OutlineInputBorder(
                      borderSide:BorderSide(color: AppColors.royal_gold),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:BorderSide(color: AppColors.textSecondary),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    label: Text('Email'),
                    labelStyle: TextStyle(color: AppColors.textSecondary),
                    hintText: "Enter Email",
                    hintStyle: TextStyle(color: AppColors.textSecondary)
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
                    prefixIcon: Icon(Icons.lock,color: AppColors.royal_gold,),
                    label: Text('Password'),
                    labelStyle: TextStyle(color: AppColors.textSecondary),
                    hintText: "Enter Password",
                    hintStyle: TextStyle(color: AppColors.textSecondary),
                    focusedBorder : OutlineInputBorder(
                      borderSide:BorderSide(color: AppColors.royal_gold),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:BorderSide(color: AppColors.textSecondary),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),

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
                  color: AppColors.royal_gold,
                  textColor: AppColors.deep_black,
                  minWidth: 100,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text("Register"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(1),
              child: Text(
                "Already Have Account ?",
                style: TextStyle(fontSize: 14,color: AppColors.textSecondary),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => login()),
                  );
                },
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>siUp()));
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 14,color: AppColors.royal_gold
                    ),
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
