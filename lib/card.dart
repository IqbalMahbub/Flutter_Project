import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('App'),),
      body: Center(
        child: Card(
          borderOnForeground: true,
          shadowColor: Color.fromRGBO(33, 191, 115, 1),
          color: Color.fromRGBO(33, 191, 115, 1),
          elevation: 120,
          child: SizedBox(
            height:200 ,
            width: 200,
            child:Center(child: Text('Card')) ,
          ),
        ),
      ),
    );
  }
}
