import 'package:flutter/material.dart';
import 'package:iti/Screens/task4/score.dart';


class quiz extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'iti',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple ,
        title: Row(
          children: [
            IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_outlined),),
            Text("Genral Test", style: TextStyle(fontFamily: 'lora'),),
            SizedBox(width: 170,),
            CircleAvatar(backgroundImage: AssetImage('assets/q.png'), radius: 22,backgroundColor: Colors.white)
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(25),
          child: Container(
            child: Column(
              children: [
                Container(decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(19),
                  color: Colors.black26
                ),
                child: Center(
                  child: Column(
                    children: [
                      Text("Question 1", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, fontFamily: "lora"),),
                      Text("Who is the greatest player in history ?", style: TextStyle(fontSize: 18),)
                    ],
                  ),
                ),
                ),
                SizedBox(height: 50,),
                Center(
                  child: Text("Choise is:", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.1,),
                Container(
                  width: 200,
                  height: 60,
                  child: TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blueGrey),
                      ),
                      onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const ScoreScreen())
                      );
                      },
                      child: Text("Messi")),
                ),
                SizedBox(height: 15,),
                Container(
                  width: 200,
                  height: 60,
                  child: TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blueGrey),
                      ),
                      onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const ScoreScreen())
                      );
                      },
                      child: Text("Ronaldinho")),
                ),
                SizedBox(height: 15,),
                Container(
                  width: 200,
                  height: 60,
                  child: TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blueGrey),
                      ),
                      onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const ScoreScreen())
                      );
                      },
                      child: Text("Maradona")),
                ),
                SizedBox(height: 15,),
                Container(
                  width: 200,
                  height: 60,
                  child: TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blueGrey),
                      ),
                      onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const ScoreScreen())
                      );
                      },
                      child: Text("Ronaldo")),
                ),

              ],
            ),
          ),
        ),
      )
    );
  }
}

