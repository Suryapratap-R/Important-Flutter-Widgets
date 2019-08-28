import 'package:flutter/material.dart';

void main()=>runApp(HomePage());

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('AppBar'),
          // backgroundColor: Colors.amber,
          actions: <Widget>[
            // IconButton(icon: Icons.ac_unit,)
            IconButton(icon: Icon(Icons.ac_unit),onPressed: (){},),
            IconButton(icon: Icon(Icons.accessibility),onPressed: (){},),
          ],
          leading: IconButton(icon: Icon(Icons.add_circle),),
        ),
        body: Center(
          child: Text("Hello World"),
        ),
      ),
    );
  }
}