import 'package:flutter/material.dart';

void main(){
  runApp(TodoApp());
}

class TodoApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todolist App',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: HomeScreen(),
    );
  }

}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        title: Text('TODO LIST'),
      ),
    );
  }
}

