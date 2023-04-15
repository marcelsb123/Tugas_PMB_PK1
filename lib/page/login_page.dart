import 'package:flutter/material.dart';
import 'package:tugas_pbm_pertemuan_6/page/register_page.dart';
import 'package:tugas_pbm_pertemuan_6/page/home_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key, required this.username, required this.password});
  final username;
  final password;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _username = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 200, 0),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const 
              Text(
                "Welcome to Sobat BMI!",
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
               
              Text(
                "Sign In to Continue",
                // textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                
                ),
              
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 5,
                ),
                child: TextField(
                  controller: _username,
                  decoration: InputDecoration(
                    hintText: "..@gmail.com",
                    labelText: "Email",
                    border: OutlineInputBorder(),
                  ),
                  
                ),
              ),
              SizedBox(
              height: 10,
            ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 5,
                ),
                child: TextField(
                  controller: _password,
                  decoration: InputDecoration(
                    hintText: "character/number",
                    labelText: "Password  ",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              MaterialButton(
                padding: EdgeInsets.all(10),
                minWidth: 200,
                color: Color.fromARGB(255, 0, 0, 0),
                child: AnimatedSwitcher(
                  duration: Duration(milliseconds: 500),
                  child: Text(
                    "Sign In",
                    key: ValueKey<bool>(true),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  transitionBuilder: (child, animation) =>
                      ScaleTransition(child: child, scale: animation),
                ),
                onPressed: () {
                  // Navigator.of(context).pushNamed("/login");

                  if (_username.text.toString() != username[0].toString() ||
                      _password.text.toString() != password[0].toString()) {
                    // return 'username atau password salah';
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('username atau password salah')),
                    );
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(username: username),
                      ),
                    );
                  }
                },
              ),
              TextButton(
                child: Text(
                  "Don't have an account?",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyCustomForm()));
                },
              ),
              TextButton(
                child: Text(
                  "Sign Up.",
                  style: TextStyle(color: Color.fromARGB(255, 0, 66, 189),
                  fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyCustomForm()));
                },
              )
            ],
          ),
        ));
  }
}
