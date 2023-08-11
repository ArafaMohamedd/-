import 'package:flutter/material.dart';
import 'package:iti/task3/task3.dart';

void main() {
  runApp(const quiz_app());
}

class quiz_app extends StatelessWidget {
  const quiz_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: login(),
    );
  }
}