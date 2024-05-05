import 'dart:ffi';

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
  TextEditingController searchTextFileController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(color: Colors.red, Icons.home),
          title: Text('Home'),
          backgroundColor: Colors.pink,
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          label: Icon(
            Icons.add,
            size: 30,
            opticalSize: 40,
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  print("Hello ");
                },
                child: Text(
                  'Tap',
                  style: TextStyle(fontSize: 32, color: Colors.black),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent.shade700,
                    foregroundColor: Colors.black,
                    shadowColor: Colors.green,
                    elevation: 10,
                    //padding: EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(),
                    )),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text('TextButton'),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    textStyle: TextStyle(fontSize: 32),
                  )),
              //IconButton(onPressed: () {}, icon: Icon(Icons.add)),
              FloatingActionButton(
                onPressed: () {},
                child: Icon(
                  Icons.add,
                ),
              ),
              TextField(
                controller: searchTextFileController,
                onTap: () {
                  print('Taped');
                },
                keyboardType: TextInputType.number,
                onChanged: (String input) {
                  print(input);
                },
                textInputAction: TextInputAction.done,
                onSubmitted: (String value) {
                  print(searchTextFileController.text);
                  searchTextFileController.clear();
                },
                obscureText: true,
                decoration: InputDecoration(
                  enabled: true,
                  hintText: 'Enter your Name',
                  label: Text('Name'),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.amber,
                    width: 10,
                    style: BorderStyle.solid,
                  )),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.red,
                    width: 10,
                    style: BorderStyle.solid,
                  )),
                  disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.yellowAccent.shade400,
                    width: 10,
                    style: BorderStyle.solid,
                  )),
                ),
              ),
            ],
          ),
        ));
  }
}
