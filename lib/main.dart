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
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Demo App'),
          backgroundColor: Colors.blue[700],
          foregroundColor: Colors.white,
          titleTextStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        body: Center(
          child: Text('Button Pressed: $nPressed'),
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
