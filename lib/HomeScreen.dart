import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final List<String> titles = [
    "Image-1",
    "Image-2",
    "Image-3",
    "Image-4",
    "Image-5"
  ];

  final List<String> images = [
    'assets/images/house-stark.jpg',
    'assets/images/house-stark.jpg',
    'assets/images/house-stark.jpg',
    'assets/images/house-stark.jpg',
    'assets/images/house-stark.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("HomeScreen"),centerTitle: true,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back)),
      ),
      body: ListView.builder(
        itemCount: titles.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    images[index],
                    width: double.infinity,
                    height: 170,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black.withOpacity(0.3),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      titles[index],
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'GameOfThrones', // optional
                        shadows: [
                          Shadow(
                            blurRadius: 8,
                            color: Colors.black,
                            offset: Offset(2, 2),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
