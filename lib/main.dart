import 'package:flutter/material.dart';
import 'package:iti/Ctegory_Container.dart';
import 'package:iti/Screens/category_screen.dart';
import 'package:iti/Screens/opening screen.dart';
import 'package:iti/Screens/home.dart';
import 'package:iti/Screens/login%20screen.dart';
import 'package:iti/Screens/quiz.dart';

import 'Global/quiz_data.dart';

void main() {
  runApp(const quiz_app());
}

class quiz_app extends StatelessWidget {
  const quiz_app({super.key});

  

  @override
  Widget build(BuildContext context) {
    var categoryMap = dataList[0];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: wall(),
    );
  }
}