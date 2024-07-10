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
          appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.white),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          )
        ),

          inputDecorationTheme: const InputDecorationTheme(
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.brown)
            ),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.brown)
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.brown)
            ),
            disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey)
            ),
            errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red)
            ),

      ),

          elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.amber,
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
              padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 24),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)
              )
          ),
        ),


      ),
      home:const TodoListScreen()
    );
  }



}