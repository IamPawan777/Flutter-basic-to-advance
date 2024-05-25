import 'package:basics_dart/Page/form_page.dart';
import 'package:basics_dart/Page/home_page.dart';
import 'package:basics_dart/Page/login.dart';
import 'package:basics_dart/utils/routes.dart';
import 'package:basics_dart/widgets/themes.dart';
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

      theme: MyTheme.lightTheme(),
      // ThemeData(
      //     fontFamily: GoogleFonts.lato().fontFamily,
      //     appBarTheme: AppBarTheme(
      //       color: Colors.white10,
      //       centerTitle: true,
      //       iconTheme: IconThemeData(color: Colors.red),
      //       titleTextStyle: TextStyle(
      //           color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
      //     )
      //     ),

      // themeMode: ThemeMode.light,
      darkTheme: MyTheme.darkTheme(),
      // ThemeData(
      // brightness: Brightness.dark,
      // ),
      initialRoute: "/home", // change default
      routes: {
        //navigate more than one page
        "/": (context) => LogIn(), //default
        MyRoutes.loginRoute: (context) => LogIn(), // not static
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.formRoute: (context) => FormPage(),
      },
// or.. Nagivation
      // home: HomePage(),
    );
  }

// function defination 2
}
