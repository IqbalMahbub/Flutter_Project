import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Activity2.dart';

class Home  extends StatelessWidget {
  const Home ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: TextButton( onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)
          =>Activity2()));
        },child: Text("Activity 2"),),
        
          
      ),
    );
  }
}


