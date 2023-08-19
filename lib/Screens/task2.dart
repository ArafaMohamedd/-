import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iti/Screens/task3/home.dart';


class wall extends StatelessWidget {


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
      body:Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/walll.jpg'),
                fit: BoxFit.cover
            )
        ),
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 350,),
              Text('iTi Quiz App',style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,fontStyle: FontStyle.italic, color: Colors.yellow, fontFamily: 'Caveat'),),
              SizedBox(height: 20),
              Text('we are creative enjoy Quiz App', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white, fontFamily: 'Caveat'),),
              SizedBox(height: 250,),
              ElevatedButton(
                onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => home()));},
                child: Text('start',style: TextStyle(fontSize: 20,),),
                style: ElevatedButton.styleFrom(primary: Colors.green, padding: EdgeInsets.symmetric(horizontal: 160, vertical: 1), ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
