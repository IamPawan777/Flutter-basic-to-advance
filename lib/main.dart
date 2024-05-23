import 'package:basics_dart/Page/home_page.dart';
import 'package:basics_dart/Page/login.dart';
import 'package:basics_dart/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  // starting point
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({super.key});                                 // Constructor............

// function defination 1

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/login", // change default
      routes: {
        //navigate more than one page
        "/": (context) => LogIn(), //default
        MyRoutes.loginRoute: (context) => LogIn(),            // not static
        MyRoutes.homeRoute: (context) => HomePage(),
      },
// or.. Nagivation
      // home: HomePage(),
    );
  }

// function defination 2
}
