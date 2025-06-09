import 'package:dev_01/colors.dart';
import 'package:flutter/material.dart';

class Houses extends StatefulWidget {
  const Houses({super.key});

  @override
  State<Houses> createState() => _HousesState();
}

class _HousesState extends State<Houses> {
  final items = ['House Stark', 'House Targaryen', 'House Lannister'];
  String? value;

  final Map<String, List<String>> housesImages = {
    'House Stark': [
      'assets/images/house-stark.jpg',
      'assets/images/house-stark.jpg',
      'assets/images/house-stark.jpg',
      'assets/images/house-stark.jpg',
      'assets/images/house-stark.jpg',
      'assets/images/house-stark.jpg',
      'assets/images/house-stark.jpg',
    ],
    'House Targaryen': [
      'assets/images/house-targaryen.jpg',
      'assets/images/house-targaryen.jpg',
      'assets/images/house-targaryen.jpg',
      'assets/images/house-targaryen.jpg',
      'assets/images/house-targaryen.jpg',
      'assets/images/house-targaryen.jpg',
      'assets/images/house-targaryen.jpg',
    ],
    'House Lannister': [
      'assets/images/house-lannister.jpg',
      'assets/images/house-lannister.jpg',
      'assets/images/house-lannister.jpg',
      'assets/images/house-lannister.jpg',
      'assets/images/house-lannister.jpg',
      'assets/images/house-lannister.jpg',
      'assets/images/house-lannister.jpg',
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.deep_black,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.royal_gold),
                  borderRadius: BorderRadius.circular(10)
                ),
        enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: AppColors.royal_gold),
    borderRadius: BorderRadius.circular(10)
    )
              ),
              dropdownColor: Colors.black,
              style: const TextStyle(color: AppColors.textSecondary),
              hint: const Text("Select House", style: TextStyle(color: AppColors.textSecondary)),
              value: value,
              items: items.map((item) {
                return DropdownMenuItem(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
              onChanged: (selected) {
                setState(() {
                  value = selected;
                });
              },
            ),
            const SizedBox(height: 20),
            if (value != null)
              Expanded(
                // GridView handles scrolling itself, no need for SingleChildScrollView
                child: GridView.builder(
                  padding: const EdgeInsets.only(top: 20),
                  itemCount: housesImages[value]!.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                  ),
                  itemBuilder: (context, index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        housesImages[value]![index],
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}
