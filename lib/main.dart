import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyCounter(),
    );
  }
}

class MyCounter extends StatefulWidget {
  const MyCounter({super.key});

  @override
  State<MyCounter> createState() => _AnotherState();
}

class _AnotherState extends State<MyCounter> {
  int count = 1;
  int ran = Random().nextInt(100); // Initial random number

  void onPressed() {
    setState(() {
      count++;
      ran = Random().nextInt(1000); // Generate new random number
    });
  }

  void onPressedOpp() {
    setState(() {
      count--;
      ran = Random().nextInt(100); // Generate new random number
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("The Title 2"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Count: $count",
          ),
          Text(
            "Random Number: $ran",
          ),
          ElevatedButton(onPressed: onPressed, child: Text("Increment")),
          ElevatedButton(onPressed: onPressedOpp, child: Text("Decrement")),
        ],
      ),
    );
  }
}
