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
      body:  ListView.builder(
        itemCount: 10,
          itemBuilder: ( context, int index) {
          return ListTile(
            title: const Text('Todo Title'),
            subtitle: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children:[Text('Todo body'),Text('time')]),
            trailing: Wrap(
              children: [
                IconButton(onPressed: (){}, icon:const Icon(Icons
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
}
