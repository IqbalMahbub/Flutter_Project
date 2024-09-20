import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CirculerProgresScreen extends StatelessWidget {
  const CirculerProgresScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('App'),),
      body: Center(
        child: Column(
          children:[ CircularProgressIndicator(
            color: Colors.deepPurple,
          ),
          LinearProgressIndicator(
            color: Colors.red,
            minHeight:10,
            backgroundColor: Colors.green,
          )
        ]
        )
      ),
    );
  }
}
