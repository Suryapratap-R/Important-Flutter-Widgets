import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Row(
      children: <Widget>[
        Expanded(child: Container(color: Colors.orange,width: 50,),),
        Expanded(child: Container(color: Colors.white,width: 50,),),
        Expanded(child: Container(color: Colors.green,width: 50,),),
      ],
      ),
    );
  }
}