import 'package:flutter/material.dart';

import 'maintab.dart';

class ImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/your_image.jpg', fit: BoxFit.cover, height: double.infinity, width: double.infinity),
          Positioned(
            bottom: 40,
            left: 20,
            child: Text("Welcome!", style: TextStyle(fontSize: 24, color: Colors.white)),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_forward),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => MainTabs()));
        },
      ),
    );
  }
}
