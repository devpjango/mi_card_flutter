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
            margin: EdgeInsets.symmetric(vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 200.0,
                  width: 300.0,
                  color: Colors.red,
                  child: Text(
                    'Button Pressed: $nPressed',
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 400,
                  width: 300,
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: Card(
                    color: Colors.green,
                    child: ListTile(
                      textColor: Colors.white,
                      title: Align(
                        alignment: Alignment.topCenter,
                        child: Text("Hello World"),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 100,
                  width: 300,
                  color: Colors.yellow,
                  child: Text(
                    "Container 3",
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
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
