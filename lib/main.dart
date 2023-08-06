import 'package:fecthesispublish/constants/app-fonts.dart';
import 'package:fecthesispublish/screens/splashs/spalsh_screen1.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: SplashScreen1(),
    );
  }
}
