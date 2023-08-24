import 'package:flutter/material.dart';

class AppTheme {
  static Color ligthPrimary = const Color(0XFFB7935F);
  static Color darkPrimary = const Color(0XFF141A2E);

  // static ThemeMode themeMode  = ThemeMode.dark;

  static ThemeData lightTheme = ThemeData(
    primaryColor: ligthPrimary,
    canvasColor: const Color(0xFFB7935F),
    //  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    useMaterial3: true,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: Colors.black),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
    ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: const Color(0XFFB7935F),
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: false,
      selectedIconTheme: IconThemeData(
        color: Colors.black,
        size: 25,
      ),
      selectedItemColor: Colors.black,
      selectedLabelStyle: TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      showSelectedLabels: true,
      unselectedIconTheme: IconThemeData(
        color: Colors.white,
        size: 26,
      ),
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 30.0,
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      bodyMedium: TextStyle(
        fontSize: 20,
        color: Colors.black,
      ),
    ),
    bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: Color(0xFFB7935F),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          bottomLeft: Radius.circular(20),
        ))),
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: darkPrimary,
    canvasColor: const Color(0xFFFACC1D),
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    useMaterial3: true,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: Colors.white),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: const Color(0XFF141A2E),
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: false,
      selectedIconTheme: IconThemeData(
        color: Color(0xFFFACC1D),
        size: 25,
      ),
      selectedItemColor: Color(0xFFFACC1D),
      selectedLabelStyle: TextStyle(
        color: Color(0xFFFACC1D),
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      showSelectedLabels: true,
      unselectedIconTheme: IconThemeData(
        color: Colors.white,
        size: 26,
      ),
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 30.0,
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      bodyMedium: TextStyle(
        fontSize: 20,
        color: Colors.white,
      ),
    ),
    bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: const Color(0XFF141A2E),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          bottomLeft: Radius.circular(20),
        ))),
  );
}
