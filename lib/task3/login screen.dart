
import 'package:flutter/material.dart';
class loginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Login", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),

         Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Username',
              prefixIcon: IconButton(
                onPressed: (){},
                icon: Icon(Icons.person),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1,),
                borderRadius: BorderRadius.circular(40)
              )
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
                labelText: 'Password',
                prefixIcon: IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.lock),
                ),
                suffixIcon: IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.visibility_off),
                ),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1,),
                    borderRadius: BorderRadius.circular(40)
                )
            ),
          ),
        ),
        Padding
          (padding: EdgeInsets.only(left: 170),
          child: Row(
            children: [
              Text("New to quizz app?"),
              Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: TextButton(
                    onPressed: (){},
                    child: Text('Register',style: TextStyle(color: Colors.green),),
                  ),
              )
            ],
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.0,),
        ElevatedButton(
          onPressed: () {},
          child: Text('Login'),
          style: ElevatedButton.styleFrom(
            shadowColor: Color.fromARGB(205, 303, 250, 300),
            elevation: 25,
            minimumSize: Size(150, 40),
            backgroundColor: Colors.green,
            shape: StadiumBorder()
          ),
        ),
        SizedBox(height: 20,),
        Icon(Icons.fingerprint,size: 80,color: Colors.blue,),

        Text('Use Touch ID',style: TextStyle(color: Colors.grey),),

        Padding(
            padding: EdgeInsets.all(10),
          child: Row(
            children: [
              Checkbox(value: true, onChanged: (value) => true,),
              Padding(
                padding: EdgeInsets.only(left: 0),
                child: Text('Remember me'),
              ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.2,),
              TextButton(onPressed: (){}, child: Text('Forget Password', style: TextStyle(color: Colors.green),))
            ],
          ),
        )
      ],
    );
  }
}
