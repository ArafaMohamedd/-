import 'package:flutter/material.dart';
import 'package:iti/task4/quiz.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [SizedBox(height: 15,),
          Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Hello ,", style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold, fontFamily: "Shantell"),),
                  TextButton(onPressed: (){}, child: Text("Arafa", style: TextStyle(fontSize: 28, fontFamily: "Shantell"),))
                ],
              ),
              Text("Your Score is T/T",style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, fontFamily: "Shantell"))
            ],
          ),
          TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blueGrey)
            ),
              onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => quiz()));},
    child: Text("Reset quiz", style: TextStyle(fontSize: 50,fontFamily: 'lora'),)
          ),
          SizedBox(height: 15,)
          
        ],
      ),
    );
  }
}
