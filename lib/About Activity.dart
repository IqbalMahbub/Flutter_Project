import 'package:first_flutter_project/Login%20Activity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class aboutActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.home),
          title: Text('About'),
        ),
        body: ElevatedButton(
          onPressed: () {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => LoginActivity()),
                (route) => true);
          },
          child: Text('Login'),
        ));
  }
}
