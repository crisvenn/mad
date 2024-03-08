
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class area extends StatefulWidget {
  const area({super.key});

  @override
  State<area> createState() => _areaState();
}

class _areaState extends State<area> {
 
  final TextEditingController length_controller = TextEditingController();
  final TextEditingController breadth_controller = TextEditingController();
  final TextEditingController area_controller = TextEditingController();
  int _index = 0;

  Future<void> _launchUrl() async{
    final Uri url = Uri.parse('https://www.cuemath.com/measurement/area-of-rectangle/');
    if(!await launchUrl(url))
    {
      throw Exception('Not loading data $url' );
    }
  }
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('CALCULATE AREA'),
        backgroundColor: Colors.lightBlue) ,
        body: 
        SingleChildScrollView(
        child: Column(
          
          children: [
            SizedBox(
              height: 300,
            child: Card(
              color: Colors.deepPurpleAccent,
              
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Text('Follow the trail and continue solving the answer, if you don\'t understand click on the link given below',
                  style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic,color: Colors.white),
                  ),
                  SizedBox(height:3),
                ElevatedButton(onPressed: _launchUrl, 
                child: Text('LEARN MORE', 
                style:TextStyle(fontSize: 18, fontStyle: FontStyle.italic, color: Colors.black)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.limeAccent,
                  elevation: 5,
                )
                )
                ],
              )
              

            ),
            ),
            SizedBox(height: 10),
            Stepper(
              currentStep: _index,
              onStepContinue: () {
                if(_index <= 3){
                  setState(() {
                    _index +=1;
                  });
                }
                else{
                  final snackbar = SnackBar(content: Text('Couldn\'t load  the data'));
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                }
              },

              onStepCancel: () {
                if(_index>0)
                {
                  setState(() {
                    _index -=1;

                  });
                }
                else
                {
                  final snackbar = SnackBar(content: Text('Couldn\'t load the data'));
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                }
              },

              onStepTapped: (index1) {
                _index = index1;
              },

              steps:<Step>[
                Step(
                  
                  
                  title:Text('Length: '),
                content: Column(
                  children: [
                    TextField(
                      controller: length_controller,
                      decoration:InputDecoration(
                        border: OutlineInputBorder(                       
                        ),
                        labelText: 'Enter Length: ',
                        labelStyle: TextStyle(color: Colors.blueGrey),

                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ],
                ),
                isActive: _index == 0,
                
                ),

                Step(
                  title: Text('Breadth'),
                 content: Column(
                  children: [
                    TextField(
                      controller: breadth_controller,
                      decoration: InputDecoration(
                        border:OutlineInputBorder(),
                        labelText: 'Enter Breadth',
                        labelStyle: TextStyle(color: Colors.blueGrey),
                    ),
                    keyboardType: TextInputType.number,
                    ),
                  ],
                 ),
                 
                 isActive: _index == 1,
                 ),

                 Step(
                  title: Text('Area'),
                 content: Column(
                  children: [
                    TextField(
                      readOnly: true,
                      controller: area_controller,
                      decoration: InputDecoration(
                        border:OutlineInputBorder(),
                        hintText: 'Area of the rectangle',
                        hintStyle: TextStyle(fontStyle: FontStyle.italic, color: Colors.blueGrey),
                    )
                    ),
                    SizedBox(height: 5),
                    GestureDetector(
                      onTap: () {
                        double length = double.tryParse(length_controller.text) ?? 0.0;
                        double breadth = double.tryParse(breadth_controller.text) ?? 0.0;
                        double area = length * breadth;
                        area_controller.text = area.toStringAsFixed(2);
                      },
                      child: Container(
                        padding: EdgeInsets.all(5),
                        alignment: Alignment.topCenter,
                      child:  FloatingActionButton.large(
                        onPressed: null,
                        backgroundColor: Colors.blueAccent,
                       child: Icon(Icons.note, color: Colors.white),
                       
                       
                      ),
                      ),
                    )
                  ],
                 ),
                 
                 isActive: _index == 2,
                 )

              ]
            ),
            SizedBox(height: 3),
            Container(
              height: 100,
              width: 200,
            child: FloatingActionButton(onPressed: (){
            Navigator.pop(context);
  },
      child: Text('HOMEPAGE',
      style: TextStyle(color: Colors.white)),
      backgroundColor: Colors.blue,
      ),
            )
          ],
        ),
        ),

        );
        
  }
}




