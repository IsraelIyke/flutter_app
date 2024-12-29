import 'package:flutter/material.dart';

class Mine extends StatelessWidget {
  const Mine({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            elevation: 3,
            toolbarHeight: 40,
            centerTitle: true,
            title: Text("Layout"),
            backgroundColor: const Color.fromRGBO(195, 195, 241, 1),
            titleTextStyle: TextStyle(
              fontSize: 14,
            ),
          ),
          body: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Card(
                      elevation: 3,
                      color: Color.fromRGBO(195, 195, 241, 1),
                      child: Padding(
                        padding: const EdgeInsets.all(18),
                        child: Text("Hello"),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Card(
                      elevation: 3,
                      color: Color.fromRGBO(195, 195, 241, 1),
                      child: Padding(
                        padding: const EdgeInsets.all(18),
                        child: Text(
                          "Hello",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            color: Colors.deepOrangeAccent,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Card(
                      elevation: 3,
                      color: Color.fromRGBO(195, 195, 241, 1),
                      child: Padding(
                        padding: const EdgeInsets.all(18),
                        child: Text("Hello"),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                maxLength: 30,
                cursorWidth: 5,
                decoration: InputDecoration(
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(34),
                    ),
                    fillColor: const Color.fromARGB(58, 255, 193, 7)),
              ),
            ],
          )),
    );
  }
}
