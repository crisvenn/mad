import 'package:flutter/material.dart';
import 'package:flutter_application_1/SplashScreen.dart';
//import 'package:flutter_application_1/homepage.dart';
//import 'SplashScreen.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:'Flutter Demo',
      home: SplashScreen(),
    );
  }
}