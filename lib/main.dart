import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Welcome"),
          ),
          body: Center(
            child: Container(
              // color: Colors.red,
              child: Text("This is Home page"),
            ),
          ),
        ),
      ),
    );
  }
}