import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme() => ThemeData(
      fontFamily: GoogleFonts.lato().fontFamily,
      appBarTheme: AppBarTheme(
        color: Colors.white10,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.red),
        titleTextStyle: TextStyle(
            color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
      ));

  static ThemeData darkTheme() => ThemeData(
        brightness: Brightness.dark,
      );
}
