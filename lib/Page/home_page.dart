import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {                          // return widget

    final double days = 30; // not change final type
    String name = "Pawan Bisht";
    bool isValue = false;
    var variabl = "Monday"; // any type int, string, bool
    const pi = 3.14;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        title: Text("Welcome"),
      ),
      body: Center(
        child: Container(
          child: Text(
              "This is Home page.....$days.....${name}....\n.....$isValue.....$variabl....$pi"), // +also can use
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.amber,
      ),
    );
  }
}
