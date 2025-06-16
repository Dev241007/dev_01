import 'package:flutter/material.dart';

class MainTabs extends StatefulWidget {
  @override
  _MainTabsState createState() => _MainTabsState();
}

class _MainTabsState extends State<MainTabs> {
  int currentIndex = 0;

  final List<Widget> _pages = [
    TabBarScreen(),
    ImageListPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.tab), label: "Tabs"),
          BottomNavigationBarItem(icon: Icon(Icons.image), label: "Images"),
        ],
      ),
    );
  }
}
class TabBarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(title: Text("Tab Bar Example"), bottom: TabBar(tabs: [
          Tab(text: "Stark"),
          Tab(text: "Targaryen"),
        ])),
        body: TabBarView(
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/images/house-stark.jpg',
                  width: double.infinity,
                  height: 400,
                  fit: BoxFit.cover,
                ),
                Container(
             width: double.infinity,

                  padding: EdgeInsets.all(8),
                  child: Text(
                    "House Stark",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Image.asset(
                  'assets/images/house-targaryen.jpg',
                  width: double.infinity,
                  height: 400,
                  fit: BoxFit.cover,
                ),
                Container(
                  width: double.infinity,

                  padding: EdgeInsets.all(8),
                  child: Text(
                    "House Targaryen",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

        );
  }
}
class ImageListPage extends StatelessWidget {
  final List<Map<String, String>> items = [
    {"image": "assets/images/house-stark.jpg", "desc": "House Stark"},
    {"image": "assets/images/house-targaryen.jpg", "desc": "House targaryen"},
    {"image": "assets/images/house-lannister.jpg", "desc": "House lannister"},
    {"image": "assets/images/house-stark.jpg", "desc": "House Stark"},
    {"image": "assets/images/house-targaryen.jpg", "desc": "House targaryen"},
    {"image": "assets/images/house-lannister.jpg", "desc": "House lannister"},
    {"image": "assets/images/house-stark.jpg", "desc": "House Stark"},
    {"image": "assets/images/house-targaryen.jpg", "desc": "House targaryen"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Image List")),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                Image.asset(items[index]['image']!),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(items[index]['desc']!, style: TextStyle(fontSize: 16)),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
