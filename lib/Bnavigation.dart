import 'package:dev_01/HomeScreen.dart';
import 'package:flutter/material.dart';

class Bnavigation extends StatefulWidget {
  const Bnavigation({super.key});

  @override
  State<Bnavigation> createState() => _BnavigationState();
}

class _BnavigationState extends State<Bnavigation> {
  int currentIndex = 0;

  final List<Widget> pages = [
    buildhome(),
    Center(child: Text("This Is Search Page", style: TextStyle(fontSize: 20))),
    Center(child: Text("This Is Profile Page", style: TextStyle(fontSize: 20))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Sample App", style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            onPressed: () => showDialog(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: Text("Logout"),
                content: Text("Do You Want to Logout ?"),
                actions: <Widget>[
                  TextButton(onPressed: (){Navigator.pop(context);}, child: Text("Cancel",style: TextStyle(color: Colors.blue),)),
                  TextButton(onPressed: (){Navigator.pop(context);}, child: Text("Ok",style: TextStyle(color: Colors.blue),))
                ],
              ),
            ),
            icon: Icon(Icons.logout),
            color: Colors.white,
          ),
        ],
      ),
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        backgroundColor: Colors.transparent,
        elevation: 0,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.blue),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.blue),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.blue),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}

class buildhome extends StatefulWidget {
  const buildhome({super.key});

  @override
  State<buildhome> createState() => _buildhomeState();
}

class _buildhomeState extends State<buildhome> {
  List<String> options = const ['Male', 'Female'];
  final List<bool> isChecked = [false, false, false, false, false];
  String selectedvalue = 'Male';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Select Gender :", style: TextStyle(fontSize: 20)),
            ),
            ListTile(
              leading: Radio(
                value: options[0],
                activeColor: Colors.blue,
                groupValue: selectedvalue,
                onChanged: (value) {
                  setState(() {
                    selectedvalue = value.toString();
                  });
                },
              ),
              title: Text("Male", style: TextStyle(fontSize: 18)),
            ),
            ListTile(
              leading: Radio(
                value: options[1],
                activeColor: Colors.blue,
                groupValue: selectedvalue,
                onChanged: (value) {
                  setState(() {
                    selectedvalue = value.toString();
                  });
                },
              ),
              title: Text("Female", style: TextStyle(fontSize: 18)),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Select Skills :", style: TextStyle(fontSize: 20)),
            ),
            Row(
              children: [
                Checkbox(
                  value: isChecked[0],
                  activeColor: Colors.blue,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked[0] = value!;
                    });
                  },
                ),
                Text("Flutter"),
                SizedBox(width: 33),
                Checkbox(
                  value: isChecked[1],
                  activeColor: Colors.blue,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked[1] = value!;
                    });
                  },
                ),
                Text("Dart"),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Checkbox(
                  value: isChecked[2],
                  activeColor: Colors.blue,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked[2] = value!;
                    });
                  },
                ),
                Text("Firebase"),
                SizedBox(width: 20),
                Checkbox(
                  value: isChecked[3],
                  activeColor: Colors.blue,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked[4] = value!;
                    });
                  },
                ),
                Text("Api integration"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
