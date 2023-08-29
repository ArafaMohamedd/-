import 'package:flutter/material.dart';
import 'package:iti/Screens/score.dart';
import 'package:iti/Global/quiz_data.dart';


class quiz extends StatefulWidget {

  final Map categoryMap;

   quiz({super.key, required this.categoryMap});


  @override
  State<quiz> createState() => _quizState();
}

class _quizState extends State<quiz> with TickerProviderStateMixin {
  int index = 0;
  int totalScore = 0;

  late AnimationController _questionAnimationController;
  late Animation<double> _questionAnimation;

  late AnimationController _answerAnimationController;
  late Animation<double> _answerAnimation;

  @override
  void initState() {
    super.initState();

    // Create an AnimationController and Animation for the question text
    _questionAnimationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500), // Adjust the duration as needed
    );

    _questionAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(_questionAnimationController);

    // Create a separate AnimationController and Animation for answers
    _answerAnimationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500), // Adjust the duration as needed
    );

    _answerAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(_answerAnimationController);

    // Start the question animation when the widget is first built
    _questionAnimationController.forward();
  }

  @override
  void dispose() {
    _questionAnimationController.dispose();
    _answerAnimationController.dispose();
    super.dispose();
  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.categoryMap["Color"],
        title: Row(
          children: [
           /* IconButton(onPressed: () {
              Navigator.pop(context);},
              icon: Icon(Icons.arrow_back_outlined),),*/
            Text(
              "${index + 1}/ ${(widget.categoryMap["data"] as List).length}",
              style: TextStyle(fontFamily: 'lora'),),
            SizedBox(width: 40,),

            Text(widget.categoryMap["categoryName"]),
          ],
        ),
        actions: [
          CircleAvatar(backgroundImage: AssetImage('assets/q.png'),
              radius: 22,
              backgroundColor: Colors.white)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(25),
          child: Container(
              child: Column(
                  children: [
              Container(
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(19),
              color: Colors.black26
          ),
          child: Center(
            child: Column(
                children: [
                  AnimatedOpacity(
                    opacity: _questionAnimation.value,
                    duration: Duration(seconds: 1),
                    child: Text( widget.categoryMap["data"][index]["question"],
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,
                  fontFamily: "lora"),
              ),
            ),
          ],
        ),
      ),
    ),

    SizedBox(height: MediaQuery.of(context).size.height * 0.1,),

    for (int i = 0; i <(widget.categoryMap["data"][index]["answer"] as List).length;i++)
      Padding(
    padding: EdgeInsets.all(10),
    child:
    AnimatedOpacity(
      opacity: _questionAnimation.value,
      duration: Duration(seconds: 1),
      child: TextButton(
          style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(
              widget.categoryMap["Color"]),
              ),
              onPressed: () {
              totalScore = totalScore +
              widget.categoryMap["data"][index]["answer"][i]
              ["Score"] as int;
              if (index + 1 <
              (widget.categoryMap["data"] as List).length) {
              setState(() {
              index++;
              });
              } else {
              Navigator.pushReplacement(
              context,
              MaterialPageRoute<void>(
              builder: (BuildContext context) => ScoreScreen(
              totalScore: totalScore,
              totalNumOfQuistion: index + 1,
              ),
              ),
              );
              }
              },

                child: Text(
                widget.categoryMap["data"][index]["answer"][i]["ans"],
                style: TextStyle(color: Colors.black),
                ),

      ),
    ),

            )
            ],
            ),
            ),
            )
            ,
            )
            );
  }
}

