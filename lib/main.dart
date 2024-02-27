// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:omrsheet_app/features/Select_Questions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OMR Sheet',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: Color(0xff555555)),
        useMaterial3: true,
        buttonTheme: ButtonThemeData(
          buttonColor: Color(0xff555555), // Button background color
          textTheme: ButtonTextTheme.primary,
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Color(0xff555555)), // Button border color
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        iconTheme: IconThemeData(color: Color(0xff555555)), // Icon color
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Color(0xff555555)), // Default text color
          bodyText2: TextStyle(color: Color(0xff555555)), // Default text color
        ),
        scaffoldBackgroundColor: Colors.white, // App background theme color
      ),
      home: Select_Questions(),
    );
  }
}
