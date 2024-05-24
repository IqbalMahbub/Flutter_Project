/*
1.Input two number
2.Input shuld ne Number only
3.Add button,subs button
4.Clear Button
5.Result should be shown in text
6.Text should visible when there is result
*/
import 'package:flutter/material.dart';

import 'HomeScreen.dart';

void main() {
  runApp(const SumApp());
}

class SumApp extends StatelessWidget {
  const SumApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
