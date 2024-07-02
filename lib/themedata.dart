import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ThemeData themedata() {
  return ThemeData(
    textTheme: TextTheme(
      bodyLarge: TextStyle(fontSize: 25.r, fontWeight: FontWeight.bold),
      bodyMedium: TextStyle(fontSize: 18.r, fontWeight: FontWeight.normal),
      bodySmall: TextStyle(fontSize: 14.r, fontWeight: FontWeight.normal),
      headlineLarge: TextStyle(
          fontSize: 32.r, fontWeight: FontWeight.bold, color: Colors.blue),
      headlineMedium: TextStyle(
          fontSize: 28.r, fontWeight: FontWeight.bold, color: Colors.grey),
      titleLarge: TextStyle(
          fontSize: 16.r,
          fontWeight: FontWeight.normal,
          fontStyle: FontStyle.italic,
          color: Colors.grey),
      titleMedium: TextStyle(
          fontSize: 14.r, fontWeight: FontWeight.normal, color: Colors.grey),
    ),
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
    primaryColor: Colors.black,
    useMaterial3: true,
  );
}
