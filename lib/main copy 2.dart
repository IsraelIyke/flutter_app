import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Home Page"),
        ),
        body: Center(
          child: Builder(builder: (context) {
            return Column(
              children: [const Text("Hello world 8${4 + 3}")],
            );
          }),
        ),
      ),
    );
  }
}
