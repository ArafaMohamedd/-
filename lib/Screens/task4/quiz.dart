import 'package:flutter/material.dart';
import 'package:iti/Screens/task4/score.dart';
import 'package:iti/Global/quiz_data.dart';


class quiz extends StatefulWidget {

  final Map categoryMap;

   quiz({super.key, required this.categoryMap});


  @override
  State<quiz> createState() => _quizState();
}

class _quizState extends State<quiz> {

  int index = 0;
  int totalScore = 0;



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
            Text( widget.categoryMap["data"][index]["question"],
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,
                fontFamily: "lora"),),
          ],
        ),
      ),
    ),

    SizedBox(height: MediaQuery.of(context).size.height * 0.1,),

    for (int i = 0; i <(widget.categoryMap["data"][index]["answer"] as List).length;i++)
      Padding(
    padding: EdgeInsets.all(10),
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
            )),

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

