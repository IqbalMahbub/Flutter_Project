import 'package:first_flutter_project/Product_list_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("My app"),backgroundColor: Colors.blue,),
      body: Column(
        children: [
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)
            =>ProductListScreen()));
          }, child: Text("Product")),
          
        ],
      ),
    );
  }
}
