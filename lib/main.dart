import 'package:flutter/material.dart';
//import 'dart:ui';
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
      backgroundColor: Colors.black,
      body: Center(

          child: Text('Hello iqbal mahbub,whats your favorite colour .',
            textAlign: TextAlign.center,
            maxLines: 3,
            style: TextStyle(
            color: Colors.white,
            fontSize: 40,
            fontWeight: FontWeight.bold,
            //backgroundColor: Colors.purpleAccent,
            decoration: TextDecoration.underline,
            wordSpacing: 4,
            letterSpacing: 2,
              overflow: TextOverflow.ellipsis,

          ),)),
    );
  }
}
