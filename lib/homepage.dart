import 'package:flutter/material.dart';



import 'package:flutter_application_3/services/firestoreop.dart';
class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  final firestore firesstoreservice = firestore();
  final TextEditingController textcontroller = TextEditingController();

  void openNoteBox() {
    showDialog(context: context, builder: (context)=>
    AlertDialog(
      content: TextField(
        controller: textcontroller,

      ),
      actions: [
        ElevatedButton(onPressed: (){
          firesstoreservice.addNote(textcontroller.text);
          textcontroller.clear();
          Navigator.pop(context);
        }, child: const Text('ADD NOTE'),),
      ], )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HOMEPAGE'),
        backgroundColor: Colors.yellow,
      ),
      floatingActionButton: FloatingActionButton(onPressed: openNoteBox,
      
        child:  Icon(Icons.add),
      ),
    );
  }
}

