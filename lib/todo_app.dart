import 'package:first_flutter_project/todo_list_Screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TodoApp extends StatelessWidget{
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Todolist App',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        appBarTheme: AppBarTheme(

          backgroundColor: Colors.blue,
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          )
        )
      ),
      home:TodoListScreen()
    );
  }



}