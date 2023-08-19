import 'package:flutter/material.dart';
import 'package:iti/Ctegory_Container.dart';
import 'package:iti/Screens/task2.dart';
import 'package:iti/Screens/task3/home.dart';
import 'package:iti/Screens/task3/login%20screen.dart';
import 'package:iti/Screens/task4/quiz.dart';

void main() {
  runApp(const quiz_app());
}

class quiz_app extends StatelessWidget {
  const quiz_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: wall(),
    );
  }
}