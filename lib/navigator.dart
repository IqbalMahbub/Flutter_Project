import 'package:first_flutter_project/Product_list_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CirculerProgrres.dart';
import 'card.dart';

class NavigationScreen extends StatelessWidget {
  String msg;
 NavigationScreen(
      this.msg,
      {super.key}) {

  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text(msg),backgroundColor: Colors.blue,),
      body: Column(
        children: [
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)
            =>CirculerProgresScreen()));
          }, child: Text("Product")),
          
        ],
      ),
    );
  }
}
