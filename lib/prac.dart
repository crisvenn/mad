import 'package:flutter/material.dart';

class prac extends StatefulWidget {
  const prac({super.key});

  @override
  State<prac> createState() => _pracState();
}

class _pracState extends State<prac> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('PRACTICE', style: TextStyle(color: Colors.blue),),
        backgroundColor: Colors.greenAccent,
      ) ,
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children:[
              SizedBox(
                
                height: 400,
                width: 400,
                
               child: Card(
                color: Color.fromARGB(10, 58, 228, 135),
                elevation: 5,
                
                child:Padding(padding:EdgeInsets.all(20),
                
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('WELCOME', style: TextStyle(fontSize: 25),),
                    Text('USER', style:TextStyle(fontSize: 15),),
                  ],
                    
                ),
                ),
              ),
              
              ),
              Positioned(
                top:0.0,
                right: 0.0,
                left: 0.0,
                child:CircleAvatar(
                radius: 40,
                child: IconButton(onPressed:(){
                  setState(() {
                    Navigator.pop(context);
                  });
                }, icon: Icon(Icons.access_alarm_rounded, size: 35))
              ),)
            ] 
          )
        ],
      )
      );
  }
}