import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:GridViewScreen()
    );
  }
}

class GridViewScreen extends StatefulWidget {
  @override
  _GridViewScreenState createState() => _GridViewScreenState();
}

class _GridViewScreenState extends State<GridViewScreen> {
  List<int> _list = [];

    @override
    void initState() { 
      super.initState();
      for(int i = 0; i<100; i++){
      _list.add(i*5);
    }
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
        itemBuilder: (context, index){
          return Card(
            child: Center(
              child: Text("${_list[index]}", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
            ),
            color: Colors.blue,
            margin: EdgeInsets.all(5),
          );
        },
        itemCount: _list.length,
      ),
    );
  }
}