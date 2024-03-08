    //import 'dart:ffi';
    //import 'dart:html';
import 'dart:math';

    import 'package:flutter/material.dart';

    class tween_visible extends StatefulWidget {
    const tween_visible({super.key});

    @override
    State<tween_visible> createState() => _tween_visibleState();
    }

    class _tween_visibleState extends State<tween_visible> {
    bool isvisible = true;
    bool transformer = false;
    double valueOftarget = 200;

    @override
    Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title:Text('TWEEN_VISIBLE_TRANSFORM'),
      backgroundColor: Colors.yellow,
    ),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        
        Row(
          
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton.extended(
              onPressed:()
          {
            setState(() {
              isvisible = !isvisible;
            });
          },
          label:Text(isvisible ? 'HIDE': 'SHOW'),
          ),

          FloatingActionButton.extended(
            onPressed: (){
            setState(() {
            valueOftarget = valueOftarget == 200 ? 400 : 200;
          });
            },
          label:Text(valueOftarget == 200 ? 'ZOOM IN' : 'ZOOM OUT'),
          ),
          FloatingActionButton.extended(onPressed: (){
            setState(() {
              transformer = !transformer;
              
            });
          }, label: Text(transformer ? 'ROTATE' : 'NORMAL'),
          ),

          ],
        ),
          SizedBox(height: 30),
          Visibility(
            visible: isvisible,
            child: TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: valueOftarget), 
              duration: const Duration(milliseconds: 500),
                builder:(BuildContext context, double size, Widget? child) =>
                  Transform.rotate(angle: transformer? pi/4:0,
                  child: Image.network('https://images.pexels.com/photos/18870635/pexels-photo-18870635/free-photo-of-a-window-display-with-a-sign-that-says-desserts.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
                  height: size,
                  alignment: Alignment.bottomCenter,),
                  ),
                
                ),
                ),
              SizedBox(height: 30),
            ElevatedButton(onPressed: ()
            {
              showModalBottomSheet(context:context, builder:(BuildContext context) 
              {
                return Container(
                  height: 400,
                  color: Colors.orange,
                  
                  child:Center(
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      ElevatedButton(onPressed: (){
                      Navigator.pop(context);},
                      child: Text('CLOSE THE SHEET'))
                    ]
                    ),
                ),
                );
              },
              );
            }, child: Text('showModalBottomSheet'))
          
          
          

        
      ],
    )
    );
    }
    }