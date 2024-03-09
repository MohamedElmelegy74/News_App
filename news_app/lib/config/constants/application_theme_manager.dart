import 'package:flutter/material.dart';

class ApplicationThemeManager {
  static const Color prymaryColor = Color(0xff39A552);
  static ThemeData applicationThemeData = ThemeData(
    primaryColor: prymaryColor,
    scaffoldBackgroundColor: Colors.transparent,
    //AppBarrTheme  Style
    appBarTheme: const AppBarTheme(
      backgroundColor: prymaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(35),
          bottomRight: Radius.circular(35),
        ),
      ), //IconTheme
      iconTheme: IconThemeData(
        color: Colors.white,
        size: 35,
      ),
      centerTitle: true,
    ),
    //TextTheme Style Font(Color , Width & Famiy)
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontFamily: "Exo",
        fontWeight: FontWeight.bold,
        fontSize: 24,
        color: Colors.white,
      ),
      bodyLarge: TextStyle(
        fontFamily: "Exo",
        fontWeight: FontWeight.bold,
        fontSize: 22,
        color: Colors.white,
      ),
      bodyMedium: TextStyle(
        fontFamily: "Exo",
        fontWeight: FontWeight.w500,
        fontSize: 22,
        color: Colors.white,
      ),
      bodySmall: TextStyle(
        fontFamily: "Exo",
        fontWeight: FontWeight.w400,
        fontSize: 14,
        color: Colors.white,
      ),
    ),
  );
}
