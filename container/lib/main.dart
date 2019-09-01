import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          margin: EdgeInsets.all(20),
          // Color cannot be used with boxDecoration color
          // color: Colors.blueGrey,
          decoration: BoxDecoration(
            border: Border.all(width: 2,color: Colors.red),
            color: Colors.blueGrey
          ),
          // child: Text('Hello World'),
        ),
      ),
    );
  }
}