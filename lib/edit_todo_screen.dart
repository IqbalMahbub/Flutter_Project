import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EditTodoScreen extends StatefulWidget {
  const EditTodoScreen({super.key});

  @override
  State<EditTodoScreen> createState() => _EditTodoScreenState();
}
 class _EditTodoScreenState extends State<EditTodoScreen> {
  final GlobalKey<FormState>_formKey = GlobalKey<FormState>();
  final TextEditingController _titleTEController= TextEditingController();
  final TextEditingController _descriptionTEController= TextEditingController();
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
                controller: _titleTEController,
                decoration: const InputDecoration(
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
                controller: _descriptionTEController,
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
  @override
  void despose(){
    _titleTEController.dispose();
    _descriptionTEController.dispose();
    super.dispose();
  }
}
