import 'package:flutter/material.dart';
import 'dart:ui';
void main(){
  runApp(myApp());
}
class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title:'Todo app',
      home: homeScreen(),
    );
  }
}
class homeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: Center(child: Text('Hello World8')),
    );
  }
}
