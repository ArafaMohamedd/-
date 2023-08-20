import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iti/Screens/task4/quiz.dart';

import 'Global/quiz_data.dart';



class CategoryContainer extends StatelessWidget {
  final int index;

  CategoryContainer({
     super.key,
    required this.index,
  });

  List quizName = ["Sport Test", "History Test", "General Test", "Geography test", "Science test", "Literature test",];
  List quizColor = [Colors.blue, Colors.red, Colors.yellow, Colors.blueGrey, Colors.pink, Colors.purple];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      // بتاخد اقصى مساحة ممكنة من المساحة المتاحة
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) =>  quiz(categoryMap: dataList[index!]),
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
              color: quizColor[index],
              border: Border.all(width: 1, color: Colors.black)),
          child: Center(
            child: Text(
              quizName[index],
              style: GoogleFonts.actor(
                  fontSize: 35, color: Color.fromARGB(255, 0, 0, 0)),
            ),
          ),
        ),
      ),
    );
  }
}