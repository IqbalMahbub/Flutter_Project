import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _numberOneTEContcroler = TextEditingController();
  final TextEditingController _numberTwoTEControler = TextEditingController();
  double _result = 0;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        leading: const Icon(Icons.home),
        title: const Text('Sum Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.number,
                controller: _numberOneTEContcroler,
                decoration: const InputDecoration(
                  hintText: 'Number One',
                ),
                validator: (String? value) {
                  String v = value ?? '';
                  if (v.isEmpty) {
                    return 'Enter number one';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                controller: _numberTwoTEControler,
                decoration: const InputDecoration(
                  hintText: 'Number Two',
                ),
                validator: (String? value) {
                  String v = value ?? '';
                  if (v.isEmpty) {
                    return 'Enter number two';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Expanded(
                      child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              double numOne = double.tryParse(
                                      _numberOneTEContcroler.text.trim()) ??
                                  1;
                              double numTwo = double.tryParse(
                                      _numberTwoTEControler.text.trim()) ??
                                  1;
                              _result = add(numOne, numTwo);
                              setState(() {});
                            }
                          },
                          child: const Text('Add'))),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                      child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              double numOne = double.tryParse(
                                      _numberOneTEContcroler.text.trim()) ??
                                  1;
                              double numTwo = double.tryParse(
                                      _numberTwoTEControler.text.trim()) ??
                                  1;
                              _result = subs(numOne, numTwo);
                              setState(() {});
                            }
                          },
                          child: const Text('Subs'))),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                      child: ElevatedButton(
                          onPressed: clear, child: const Text('Clear'))),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Result: $_result',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }

  double add(double numOne, double numTwo) {
    return numOne + numTwo;
  }

  double subs(double numOne, double numTwo) {
    return numOne - numTwo;
  }

  void clear() {
    _numberOneTEContcroler.clear();
    _numberTwoTEControler.clear();
    _result = 0;
    setState(() {});
  }
}
