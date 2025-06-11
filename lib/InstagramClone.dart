import 'package:flutter/material.dart';

class instagram extends StatefulWidget {
  const instagram({super.key});

  @override
  State<instagram> createState() => _instagramState();
}

class _instagramState extends State<instagram> {
  int _cureantIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Instagram', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold,color: Colors.white)),
        actions: const [
          Icon(Icons.favorite_border,color: Colors.white,),
          SizedBox(width: 15),
          Icon(Icons.chat_bubble_outline,color: Colors.white,),
          SizedBox(width: 10),
        ],
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 18),
        child: Column(
          children: [
            // Story section
            SizedBox(
              height: 90,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 8),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 6),
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.purple, width: 2),
                        ),
                        child: const CircleAvatar(
                          radius: 27,
                          backgroundColor: Colors.grey,
                          child: Icon(Icons.person),
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text("username", style: TextStyle(fontSize: 12,color: Colors.white)),
                    ],
                  );
                },
              ),
            ),

            // Post
            const Divider(height: 1, color: Colors.grey),
            ListTile(
              leading: const CircleAvatar(backgroundColor: Colors.grey, child: Icon(Icons.person)),
              title: const Text("username", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
              trailing: const Icon(Icons.more_vert,color: Colors.white,),
            ),
            Container(
              height: 300,
              color: Colors.grey[800],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: const [
                      Icon(Icons.favorite, color: Colors.red),
                      SizedBox(width: 12),
                      Icon(Icons.chat_bubble_outline,color: Colors.white,),
                      SizedBox(width: 12),
                      Icon(Icons.send,color: Colors.white,),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: const Icon(Icons.bookmark_border,color: Colors.white,),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 55,top: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("10547 Likes", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
                  const SizedBox(height: 4),
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(text: "@username ", style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: "Lorem ipsum dolor sit amet, consectetur"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black, // Set background to black
        selectedItemColor: Colors.white, // Selected icon color
        unselectedItemColor: Colors.white60, // Unselected icon color
        type: BottomNavigationBarType.fixed, // Optional: to prevent shifting
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.add_box), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.video_library), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),



    );
  }
}
