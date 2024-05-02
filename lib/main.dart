import 'package:flutter/material.dart';

//import 'dart:ui';
void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo app',
      home: homeScreen(),
    );
  }
}

class homeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(color: Colors.yellow, Icons.home),
          title: Text('Home',
              style: TextStyle(
                color: Colors.red,
                fontSize: 32,
              )),
        ),
        body: Column(
            mainAxisAligment:
            children: [
          Text('Iqbal '),
          Text('Mahbub'),
          Text('I love you'),
          Image.asset('img/iqbal.jpg'),
        ]));
  }
}
