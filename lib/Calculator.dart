import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final List<String> buttons = const [
    'AC', '%', '⌫', '÷',
    '7', '8', '9', '×',
    '4', '5', '6', '-',
    '1', '2', '3', '+',
    '00','0','.','='
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back),color: Colors.white,),
        title: const Text("Calculator",style: TextStyle(color: Colors.white),),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(
              child: Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: EdgeInsets.all(24.0),
                  child: Text(
                    '0',
                    style: TextStyle(color: Colors.white, fontSize: 60),
                  ),
                ),
              ),
            ),
            GridView.count(
              crossAxisCount: 4,
              shrinkWrap: true,
              padding: const EdgeInsets.all(8),
              children: buttons.map((text) {
                if (text.isEmpty) return const SizedBox(); // skip empty button
                Color bgColor = Colors.grey.shade800;
                if (['=', '+', '-', '÷','×'].contains(text)) bgColor = Colors.orange;


                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () => print("Pressed: $text"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: bgColor,
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(10),
                    ),
                    child: Text(
                      text,
                      style: const TextStyle(fontSize: 38, color: Colors.white),
                    ),
                  ),
                );
              }).toList(),
            ),

          ],
        ),
      ),
    );
  }
}
