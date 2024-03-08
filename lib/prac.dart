import 'package:flutter/material.dart';
import 'package:flutter_application_1/date_time.dart';
import 'package:flutter_application_1/tween_visible.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class prac extends StatefulWidget {
  const prac({Key? key});

  @override
  State<prac> createState() => _pracState();
}

class _pracState extends State<prac> {
  final _pageController = PageController();
  int _currentIndex = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _pages = [
      date_time(),
      tween_visible(),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'PRACTICE',
          style: TextStyle(color: Colors.blue),
        ),
        backgroundColor: Colors.greenAccent,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.yellow,
        color: Colors.purple,
        buttonBackgroundColor: Colors.white,
        items: <Widget>[
          Icon(Icons.cabin_outlined, size: 30, color: Colors.black),
          Icon(Icons.mail, size: 30, color: Colors.black),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            _pageController.animateToPage(
              index,
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeInOut,
            );
          });
        },
      ),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              SizedBox(
                height: 400,
                width: 400,
                child: Card(
                  color: Color.fromARGB(10, 58, 228, 135),
                  elevation: 5,
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'WELCOME',
                          style: TextStyle(fontSize: 25),
                        ),
                        Text(
                          'USER',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 0.0,
                right: 0.0,
                left: 0.0,
                child: CircleAvatar(
                  radius: 40,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.access_alarm_rounded, size: 35),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              children: _pages,
            ),
          ),
        ],
      ),
    );
  }
}

