import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatefulWidget {
  const HomeActivity({super.key});

  @override
  State<HomeActivity> createState() => _HomeActivityState();
}

class _HomeActivityState extends State<HomeActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.home),
        title: Text('Home'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              height: 100,
              width: double.infinity,
              color: Colors.blueAccent,
              child: Text("hfjxvj "
                  "kvkjdvdvdvdvdvdsfdfkhjgfddgkjkhjgfdsdfdhjhjkl;kljkhjghfdfssa"),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: 100,
              width: double.infinity,
              color: Colors.pink,
              child: Text("hfjxvj "
                  "kvkjdvdvdvdvdvdsfdfkhjgfddgkjkhjgfdsdfdhjhjkl;kljkhjghfdfssa"),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              height: 100,
              width: double.infinity,
              color: Colors.green,
              child: Text("hfjxvj "
                  "kvkjdvdvdvdvdvdsfdfkhjgfddgkjkhjgfdsdfdhjhjkl;kljkhjghfdfssa"),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              height: 100,
              width: double.infinity,
              color: Colors.yellow,
              child: Text("hfjxvj "
                  "kvkjdvdvdvdvdvdsfdfkhjgfddgkjkhjgfdsdfdhjhjkl;kljkhjghfdfssa"),
            ),
          ),
        ],
      ),
    );
  }
}
