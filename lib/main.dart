// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, deprecated_member_use

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:omrsheet_app/features/Select_Questions.dart';

List<CameraDescription>? cameras;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //load camera
  cameras = await availableCameras();

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
        iconTheme: IconThemeData(color: Color(0xff555555)),
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Color(0xff555555)),
        ),
        scaffoldBackgroundColor: Colors.white,
      ),
      home: SelectQuestions(),
    );
  }
}
