import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'homepage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> 
with SingleTickerProviderStateMixin
{
  @override
  void initState()
  {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(Duration(seconds: 4),()
    {
      Navigator.of(context).pushReplacement(
        
        MaterialPageRoute
        (builder:(context) => const homepage()),
      );
    });
  }
  void dispose()
  {
    super.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
    overlays: SystemUiOverlay.values );
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'SPLASHSCREEN',
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: 
            [Colors.blue, Colors.purple],
            begin: Alignment.topLeft,
            end:Alignment.bottomRight,
            ),
            

          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget>[
            Icon(Icons.note, color: Colors.white, size: 100.0),
          Text('WELCOME TO MY PAGE', style: TextStyle(color: Colors.white)),
          ]
          ),
        ),
      )
    );
  }
}