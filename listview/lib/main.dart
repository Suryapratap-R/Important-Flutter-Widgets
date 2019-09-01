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
        home: ListViewScreen());
  }
}

class ListViewScreen extends StatefulWidget {
  @override
  ListdViewScreenState createState() => ListdViewScreenState();
}

class ListdViewScreenState extends State<ListViewScreen> {
  List<int> _list = [];

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < 100; i++) {
      _list.add(i );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: EdgeInsets.all(12),
              child: Center(
                
                child: Text(
                  "${_list[index]}",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              color: Colors.blue,
            ),
          );
        },
        itemCount: _list.length,
      ),
    );
  }
}
