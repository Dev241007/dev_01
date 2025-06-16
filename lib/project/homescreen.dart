import 'package:flutter/material.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int quantity = 0;

  void increment() {
    setState(() {
      quantity++;
    });
  }

  void decrement() {
    setState(() {
      if (quantity > 0) {
        quantity--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.keyboard_arrow_left, size: 30),
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.more_vert), // 3-dot icon
              onPressed: () {
                // Open drawer using Scaffold.of(context)
                Scaffold.of(context).openDrawer();
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.shopping_cart, color: Colors.white),
        backgroundColor: Colors.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.black,
                    child: Icon(Icons.person,color: Colors.white,size: 35,),
                  ),
                  SizedBox(height: 18,),
                  Text(
                    "Devendra Jethava",
                    style: TextStyle(color: Colors.black, fontSize: 24),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  ListTile(leading: Icon(Icons.person), title: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text("Profile"),
                  )),
                  SizedBox(height: 10,),
                  ListTile(leading: Icon(Icons.account_balance_wallet), title: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text("Wallet"),
                  )),
                  SizedBox(height: 10,),
                  ListTile(leading: Icon(Icons.access_time), title: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text("Activity"),
                  )),
                  SizedBox(height: 10,),
                  ListTile(leading: Icon(Icons.fastfood), title: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text("Foods"),
                  ),),
                  SizedBox(height: 10,),
                  ListTile(leading: Icon(Icons.bar_chart), title: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text("Reports"),
                  )),
                  SizedBox(height: 10,),
                  ListTile(leading: Icon(Icons.stacked_line_chart), title: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text("Statistics"),
                  )),
                  SizedBox(height: 10,),
                  ListTile(leading: Icon(Icons.logout), title: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text("Sign Out"),
                  )),
                  SizedBox(height: 10,),
                  Divider(),
                  ListTile(leading: Icon(Icons.share), title: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text("Tell a Friend"),
                  )),
                ],
              ),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Image.asset('assets/images/greek-salad.png', height: 450),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Greek Salad",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: IconButton(
                        onPressed: increment,
                        icon: Icon(Icons.add, color: Colors.white, size: 18),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text('$quantity', style: TextStyle(fontSize: 25)),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: IconButton(
                        onPressed: decrement,
                        icon: Icon(Icons.remove, color: Colors.white, size: 18),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Greek salad or horiatiki salad is a popular salad in Greek cuisine generally made with pieces of tomatoes, cucumbers, onion, feta cheese, and olives and dressed with salt,",
              style: TextStyle(color: Colors.grey),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Delivery Time ",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Icon(Icons.power_settings_new, size: 16, color: Colors.grey),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "15 Min",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text("Total Price", style: TextStyle(color: Colors.grey)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Icon(Icons.attach_money, size: 17),
                  Text(
                    "32.00",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
