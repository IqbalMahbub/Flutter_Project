import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddTodoListScreen extends StatefulWidget {
  const AddTodoListScreen({super.key});

  @override
  State<AddTodoListScreen> createState() => _AddTodoListScreenState();
}

class _AddTodoListScreenState extends State<AddTodoListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Items'),
      ),
    );
  }
}
