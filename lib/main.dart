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
              fontSize: 20,
            )),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          'Iqbal',
          style: TextStyle(
            fontSize: 35,
            color: Colors.cyan,
            wordSpacing: 2,
            letterSpacing: 2,
          ),
        ),
        Text(
          'Mahbub',
          style: TextStyle(
            fontSize: 35,
            color: Colors.cyan,
            wordSpacing: 2,
            letterSpacing: 2,
          ),
        ),
        Text('I love you'),
        ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Massage'),
                      content: Text('Welcome to my app'),
                      actions: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('Cancel'),
                        ),
                      ],
                    );
                  });
            },
            child: Text('Tap')),
        ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                  isDismissible: false,
                  backgroundColor: Colors.purpleAccent,
                  barrierColor: Colors.pink.shade900,
                  context: context,
                  builder: (context) {
                    return Column(
                      children: [
                        Text('Registration my app'),
                        Text('Subscribe my chanel'),
                      ],
                    );
                  });
            },
            child: Text(
              'Todo Information',
              style: TextStyle(fontSize: 32),
            ))
        //Image.asset('img/iqbal.jpg'),
      ]),
    );
  }
}
