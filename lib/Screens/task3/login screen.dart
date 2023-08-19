import 'package:flutter/material.dart';
import 'package:iti/Screens/category_screen.dart';
import 'package:iti/Screens/task4/quiz.dart';

class loginPage extends StatelessWidget {

  final _formKey = GlobalKey<FormState>();

  RegExp regex = RegExp(r'(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[!@#\$%^&*()\-_=+{};:,<.>]).{9,}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Login",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Email must not be empty";
                    } else if (!value.contains('@') || !value.contains('.')) {
                      return "Invalid email format";
                    } else if (!value.contains('com')) {
                      return "Email must contain 'com'";
                    }
                    return null; // Return null to indicate no validation error
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: 'Email',
                      prefixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.email),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(40))),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: TextFormField(

                  validator: (value) {
                    if (value!.isEmpty) {
                      return ("UserName mustn't be empty");
                    }else if(value.length<8){
                      return ("User Name must be > 8 Characters");
                    }else if(value[0].toUpperCase() != value[0]){
                      return ("First Litter must be uppercase");
                    }
                  },

                  decoration: InputDecoration(
                      labelText: 'Username',
                      prefixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.person),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(40))),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Password mustn't be empty";
                    } else if (value.length < 9) {
                      return "Password must be at least 9 characters";
                    } else if (!regex.hasMatch(value)) {
                      return "Password must contain at least one uppercase letter, one lowercase letter, one special character, and one number";
                    }
                    return null; // Return null to indicate no validation error
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: 'Password',
                      prefixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.lock),
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.visibility_off),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(40))),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 170),
                child: Row(
                  children: [
                    Text("New to quizz app?"),
                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Register',
                          style: TextStyle(color: Colors.green),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.0,
              ),
              ElevatedButton(
                onPressed: () {
                  if(_formKey.currentState!.validate()){
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (BuildContext context) => CategoryScreen()));
                     }
                  },
                child: Text('Login'),
                style: ElevatedButton.styleFrom(
                    shadowColor: Color.fromARGB(205, 303, 250, 300),
                    elevation: 25,
                    minimumSize: Size(150, 40),
                    backgroundColor: Colors.green,
                    shape: StadiumBorder()),
              ),
              SizedBox(
                height: 20,
              ),
              Icon(
                Icons.fingerprint,
                size: 80,
                color: Colors.blue,
              ),
              Text(
                'Use Touch ID',
                style: TextStyle(color: Colors.grey),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Checkbox(
                      value: true,
                      onChanged: (value) => true,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 0),
                      child: Text('Remember me'),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.2,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forget Password',
                          style: TextStyle(color: Colors.green),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
