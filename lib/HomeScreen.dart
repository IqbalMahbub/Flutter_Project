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
        child: Column(
          children: [
            TextField(
              controller: _numberOneTEContcroler,
              decoration: const InputDecoration(
                hintText: 'Number One',
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            TextField(
              controller: _numberTwoTEControler,
              decoration: const InputDecoration(
                hintText: 'Number Two',
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Expanded(
                    child: ElevatedButton(
                        onPressed: () {
                          double numOne = double.tryParse(
                                  _numberOneTEContcroler.text.trim()) ??
                              0;
                          double numTwo = double.tryParse(
                                  _numberTwoTEControler.text.trim()) ??
                              0;
                          _result = add(numOne, numTwo);
                          setState(() {});
                        },
                        child: const Text('Add'))),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                    child: ElevatedButton(
                        onPressed: () {
                          double numOne = double.tryParse(
                                  _numberOneTEContcroler.text.trim()) ??
                              0;
                          double numTwo = double.tryParse(
                                  _numberTwoTEControler.text.trim()) ??
                              0;
                          _result = subs(numOne, numTwo);
                          setState(() {});
                        },
                        child: const Text('Sum'))),
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
