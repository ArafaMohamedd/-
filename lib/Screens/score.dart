import 'package:flutter/material.dart';
import 'package:iti/Global/quiz_data.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:iti/Screens/category_screen.dart';
import 'package:iti/Screens/opening screen.dart';
import 'package:iti/Screens/home.dart';
import 'package:iti/Screens/login%20screen.dart';
import 'package:iti/Screens/quiz.dart';

class ScoreScreen extends StatefulWidget {
  final int totalScore;
  final int totalNumOfQuistion;

  ScoreScreen({super.key, required this.totalScore, required this.totalNumOfQuistion});

  @override
  State<ScoreScreen> createState() => _ScoreScreenState();
}

class _ScoreScreenState extends State<ScoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [SizedBox(height: 15,),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Hello ,", style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold, fontFamily: "Shantell"),),
                  TextButton(onPressed: (){}, child: Text("${userNameControler.text}", style: TextStyle(fontSize: 28, color: Colors.green,),))
                ],
              ),
              Text(
                  "Your Score is ${widget.totalScore}/${widget.totalNumOfQuistion}",
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Shantell")),
            ],
          ),
          TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blueGrey)
            ),
              onPressed: (){Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (BuildContext context) => CategoryScreen()),(Route<dynamic> route) => false,);},

              child: Text("Reset quiz", style: TextStyle(fontSize: 50,fontFamily: 'lora'),)
          ),
          SizedBox(height: 15,)

        ],
      ),
    );
  }
}
