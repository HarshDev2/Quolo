import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemes {
  static ThemeData lightTheme(BuildContext context) =>
      ThemeData(
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 20)
        ),
        fontFamily: GoogleFonts.poppins().fontFamily,
      );
}
