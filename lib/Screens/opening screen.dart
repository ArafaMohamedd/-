import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iti/Screens/home.dart';
import 'package:flutter/widgets.dart';


/*class wall extends StatelessWidget {
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
}*/

class wall extends StatefulWidget {


  @override
  State<wall> createState() => _wallState();
}

class _wallState extends State<wall> with TickerProviderStateMixin{

  late AnimationController _animationController;

  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2), // Adjust the duration as needed.
    );

    // Create an animation that goes from 0 to 1.
    _animation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );

    // Start the animation.
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      // Start the animation when the app is ready.
      _animationController.forward();
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            AnimatedContainer(
              duration:  Duration(seconds: 2),
              curve: Curves.easeInOut,
              height: MediaQuery.of(context).size.height * 0.2 * _animation.value,
              child: Image.asset(
              "assets/quizLogo.png",
              height: MediaQuery.of(context).size.height * 0.1,
              ),
            ),

            //  SizedBox(height: 300,),
              Text('iTi Quiz App',style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,fontStyle: FontStyle.italic, color: Colors.yellow, fontFamily: 'Caveat'),),
             // SizedBox(height: 20),
              Text('we are creative enjoy Quiz App', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white, fontFamily: 'Caveat'),),
             // SizedBox(height: 250,),
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
