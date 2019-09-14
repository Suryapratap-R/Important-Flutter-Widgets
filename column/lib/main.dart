import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Column',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(
      children: <Widget>[
        Expanded(child: Container(color: Colors.orange,),),
        Expanded(child: GestureDetector(child: Container(color: Colors.white,),onTap: (){print('Gesture detector is pressed');},),),
        Expanded(child: InkWell(child: Container(color: Colors.green),onTap: (){},),),
      ],
      ),
    );
  }
}
// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(body: Column(
//       children: <Widget>[
//         Expanded(child: Container(color: Colors.orange,),),
//         Expanded(child: GestureDetector(child: Container(color: Colors.white,),onTap: (){print('Gesture detector is pressed');},),),
//         Expanded(child: InkWell(child: Container(color: Colors.green),onTap: (){},),),
//       ],
//       ),
//     );
//   }
// }