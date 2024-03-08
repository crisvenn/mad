import 'package:flutter/material.dart';

class date_time extends StatefulWidget {
  const date_time({super.key});

  @override
  State<date_time> createState() => _date_timeState();
}

class _date_timeState extends State<date_time> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('WELCOME'),
        backgroundColor: Colors.amber,
      ),
    );
  }
}