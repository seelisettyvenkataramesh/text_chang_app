import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(

     home: MyChangeForm(),
   );
  }

}

class MyChangeForm extends StatefulWidget{
  @override
  State<MyChangeForm> createState() => _MyChangeForm ();
}

class _MyChangeForm extends State<MyChangeForm> {

  late FocusNode focusNode;
  @override
  void initState() {
    super.initState();
    focusNode = FocusNode();


  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    focusNode.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Handle Change Text'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextFormField(
             
              focusNode: focusNode,
              onChanged: (text){
                print('Text Filed Values: $text(${text.characters.length})');
              },

            ),
          ],
        )

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => focusNode.requestFocus(),
      child: Icon(Icons.edit),)
    );
  }
}