import 'package:first_flutter_project/add_new_todo_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'edit_todo_screen.dart';

class TodoListScreen extends StatefulWidget {
  const TodoListScreen({super.key});

  @override
  State<TodoListScreen> createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(

        title: const Text('Todos'),
      ) ,
      body:  ListView.separated(
          itemCount: 10,
          itemBuilder: ( context, int index) {
          return ListTile(
            title: const Text('Todo Title'),
            subtitle: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children:[Text('Todo body'),Text('time')]),
            trailing: Wrap(
              children: [
                IconButton(onPressed: (){
                  showDeleteConfermationDialoge();
                }, icon:const Icon(Icons
                    .delete_forever_outlined)),
                IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder:
                  (context)=>const EditTodoScreen(),

                  ));
                }, icon:const Icon(Icons
                    .edit))
              ],
            ),

          );
        },
        separatorBuilder: (context,index){
            return Divider(
              color: Colors.grey.shade400,
            );
        },
      ),
       floatingActionButton: FloatingActionButton(
         onPressed: (){
           Navigator.push(context, MaterialPageRoute(builder: (context)
           =>const AddTodoListScreen()));

         },
         backgroundColor: Colors.amber,
         child: const Icon(Icons.add),
       ),
    );
  }
  void showDeleteConfermationDialoge(){
    showDialog(context: context, builder:(context){
      return AlertDialog(
        title: Text('Delete Todo'),
        content: Text('Are you Sure to delete the todo'),
        actions: [
          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text
            ('Cancel',style: TextStyle(color: Colors.green),)),
          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text('Delete',
            style: TextStyle(color: Colors.red),))
        ],
      );

    });
  }
}

