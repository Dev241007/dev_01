import 'dart:async';

import 'package:dev_01/project/homescreen.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  void initState(){
    super.initState();
    Timer(Duration(seconds: 5),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>homescreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 550,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(290),
                bottomRight: Radius.circular(290)
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Food in Two",style: TextStyle(fontSize: 32,color: Colors.white,fontWeight: FontWeight.bold),),
                SizedBox(height: 8,),
                Text("Food Delivery App",style: TextStyle(fontSize: 16,color: Colors.white70
                ),
                ),
                SizedBox(height: 20,),
                CircleAvatar(
                  radius: 140,
                  backgroundImage: AssetImage('assets/images/greek-salad.png'),
                ),

              ],
            ),
          ),
          Text("Wait Moment Beautiful.....",style: TextStyle(fontSize: 19,color: Colors.black),),
          SizedBox(height: 10,)
        ],
      ),
    );
  }
}
