import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EditTodoScreen extends StatefulWidget {
  const EditTodoScreen({super.key});

  @override
  State<EditTodoScreen> createState() => _EditTodoScreenState();
}

class _EditTodoScreenState extends State<EditTodoScreen> {
  GlobalKey<FormState>_formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Items'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Title',
                ),
                validator: (String? value) {
                  final v = value ?? '';
                  if  (v.trim().isEmpty) {
                    return 'Enter Your title';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                maxLines: 5,
                maxLength: 100,
                decoration: const InputDecoration(
                  hintText: 'Description',
                ),
                validator: (String? value) {
                  if (value?.trim().isEmpty ?? true) {
                    return 'Enter Your Description';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              SizedBox(
                width:double.infinity,
                child: ElevatedButton(
                    onPressed: (){
                      if(_formKey.currentState!.validate()){
                        Navigator.pop(context);
                      }

                    }, child: const Text('Update')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
