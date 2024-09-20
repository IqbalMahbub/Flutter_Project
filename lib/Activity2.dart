import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'navigator.dart';

class Activity2 extends StatelessWidget {
  const Activity2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Activity 2"),),
      body: Column(
        children:[
          Text("Activity 2"),
        TextButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)
          =>NavigationScreen()));
        }, child: Text("page 1"))]
      ),
    );
  }
}
