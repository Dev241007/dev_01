import 'package:dev_01/colors.dart';
import 'package:flutter/material.dart';

class Dragons extends StatefulWidget {
  const Dragons({super.key});

  @override
  State<Dragons> createState() => _HomeState();
}

class _HomeState extends State<Dragons> {
  // Example dragon image paths
  final List<String> dragonImages = [
    'assets/images/syrex.jpg',

    'assets/images/house-targaryen.jpg',

    'assets/images/house-targaryen.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.deep_black,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          itemCount: dragonImages.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // 2 columns
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          itemBuilder: (context, index) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                dragonImages[index],
                fit: BoxFit.cover,
              ),
            );
          },
        ),
      ),
    );
  }
}
