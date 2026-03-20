import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int nPressed = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue[100],

        appBar: AppBar(
          centerTitle: true,
          title: Text('Demo App'),
          backgroundColor: Colors.blue[700],
          foregroundColor: Colors.white,
          titleTextStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),

        body: SafeArea(
          child: Container(
            height: 100.0,
            width: 500.0,
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            color: Colors.red,
            child: Text(
              'Button Pressed: $nPressed',
              textAlign: TextAlign.center,
            ),
          ),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              nPressed++;
            });
          },
          backgroundColor: Colors.blue[700],
          foregroundColor: Colors.white,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
