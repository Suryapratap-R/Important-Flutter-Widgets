import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(20),
              // padding: EdgeInsets.all(40),
              // Color cannot be used with boxDecoration color
              // color: Colors.blueGrey,
              decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.red),
                  color: Colors.blueAccent[100]),
              // child: Text('Hello World'),
            ),
             Container(
              margin: EdgeInsets.all(40),
              // Color cannot be used with boxDecoration color
              // color: Colors.blueGrey,
              decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.blueGrey),
                  color: Colors.blueGrey),
              // child: Text('Hello World'),
            ),
          ],
        ),
      ),
    );
  }
}
