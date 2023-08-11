import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iti/task3/login%20screen.dart';



class login extends StatelessWidget {
  

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
      backgroundColor: Colors.green,
      body:Center(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              const Image(
                image: AssetImage('assets/R.jpg'),
                width: 150,
                height: 300,
              ),

              Expanded(
                child:
                   Container(
                     decoration: const BoxDecoration(
                         color: Colors.white,
                       borderRadius: BorderRadius.only(
                           topRight:Radius.circular(50),
                           topLeft: Radius.circular(50))),
                     child: Padding(
                       padding: EdgeInsets.all(20),
                       child: loginPage(),
                     ),
              )
              ),


            ],
          ),
        ),
      ),
    );
  }
}

