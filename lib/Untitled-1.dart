import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyCounter(), // Ensure the MaterialApp is present
    );
  }
}

class MyCounter extends StatefulWidget {
  const MyCounter({super.key});

  @override
  State<MyCounter> createState() => _MyCounterState();
}

class _MyCounterState extends State<MyCounter> {
  int count = 0;
  int another = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Count: $another',
              style: TextStyle(color: Colors.red, fontSize: 24),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  count++;
                });
              },
              child: Text('Increment'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  another = count - 1;
                });
              },
              child: Text('Decrement'),
            ),
          ],
        ),
      ),
    );
  }
}
