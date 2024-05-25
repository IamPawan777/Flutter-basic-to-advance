import 'package:basics_dart/utils/routes.dart';
import 'package:basics_dart/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool squeeze = false;

  @override
  Widget build(BuildContext context) {
    // return widget

    // final double days = 30; // not change final type
    // String name = "Pawan Bisht";
    // bool isValue = false;
    // var variabl = "Monday"; // any type int, string, bool
    // const pi = 3.14;

    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.deepPurple,
        // iconTheme: IconThemeData(color: Colors.red),
        // centerTitle: true,
        title: Text(
          "Welcome",
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text("mdm"
                  // "This is Home page.....$days.....${name}....\n.....$isValue.....$variabl....$pi"
                  ), // +also can use
            ),
            SizedBox(
              height: 30,
            ),
            Material(
              color: Colors.deepPurpleAccent,
              borderRadius: BorderRadius.circular(8),
              child: InkWell(
                onTap: () async {
                  setState(() {
                    squeeze = true;
                  });
                  await Future.delayed(Duration(milliseconds: 800));
                  await Navigator.pushNamed(context, MyRoutes.formRoute);
                  setState(() {
                    squeeze = false;
                  });
                },
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  height: 50,
                  width: squeeze ? 50 : 150,
                  alignment: Alignment.center,
                  child: squeeze
                      ? Icon(
                          Icons.done,
                          color: Colors.white,
                        )
                      : Text(
                          'Form',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),

                  // decoration: BoxDecoration(
                  //     color: Colors.deepPurple,
                  //     borderRadius: BorderRadius.circular(8)),
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: MyNewDrawer(),
    );
  }
}
