import 'package:dev_01/Home.dart';
import 'package:dev_01/houses.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        backgroundColor: AppColors.deep_black,
        appBar: AppBar(
          leading: IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: Icon(Icons.arrow_back,color: AppColors.royal_gold,)),
          backgroundColor: Colors.transparent,
          title: const Text("Game of Thrones",style: TextStyle(color: AppColors.royal_gold),),
          centerTitle: true,
          bottom: const TabBar(
            dividerColor: Colors.transparent,
            unselectedLabelColor: AppColors.textSecondary,
            labelColor: AppColors.royal_gold,
            indicatorColor: AppColors.textSecondary,
            tabs: [
              Tab(text: "Houses",icon: Icon(Icons.home,color: AppColors.royal_gold,)),
              Tab(text:'Dragons',icon: Icon(Icons.local_fire_department,color: AppColors.royal_gold,)),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            // 1st Tab
           Houses(),
          // 2nd Tab
            Dragons()          ],
        ),
      ),
    );
  }
}
