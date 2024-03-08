
import 'package:flutter/material.dart';
import 'package:flutter_application_1/area.dart';
import 'package:flutter_application_1/prac.dart';
import 'package:flutter_application_1/tween_visible.dart';
//import 'package:flutter_application_1/my_flutter_app_icons.dart';
//import 'area.dart';
class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      
      
        appBar: AppBar(
          title: Text('WELCOME TO MY LOGIN PAGE',),
          titleTextStyle: TextStyle(color: Colors.white),
          backgroundColor: Colors.blueAccent,
        ),
        body: Column(
          children: [
    Expanded(
          
            child: ListView(
            //scrollDirection: Axis.horizontal,

            children: <Widget>[            
             ListTile(
              
              onTap: (){
                // final snackbar = SnackBar(content: Text('YOU CLICKED ME'),duration: Duration(seconds: 2));
                // ScaffoldMessenger.of(context).showSnackBar(snackbar);
                Navigator.push(context, MaterialPageRoute(builder: (context) => prac()) );
              },
              leading: const Icon(Icons.map, color: Colors.blue,),
              title: const Text('MAP'),
            ),
            ListTile(
              onTap:() {
                // final snackbar = SnackBar(content: Text('YOU CLICKED HOME'),duration: Duration(seconds: 2));
                // ScaffoldMessenger.of(context).showSnackBar(snackbar);
                Navigator.push(context, MaterialPageRoute(builder:(context) => tween_visible()));
                
              },
              leading: const Icon(Icons.home, color: Colors.blue),
              title:const Text('HOME'),
            ),
            ListTile(
              onTap:() {
                // final snackbar = SnackBar(content: Text('YOU CLICKED THE ALARM'),duration: Duration(seconds: 2));
                // ScaffoldMessenger.of(context).showSnackBar(snackbar);
                Navigator.push(context, MaterialPageRoute(builder:(context) => area()));
              },
              leading: const Icon(Icons.access_alarm_outlined, color: Colors.blue),
              title:const Text('ALARM'),
              
              )
          ],
          ),
        ),
          ],
        ),
          
        
        
      
    );
  }
}
