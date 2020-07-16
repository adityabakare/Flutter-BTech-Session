import 'package:flutter/material.dart';
import 'package:ui_demo/signup.dart';
import 'ProfilePage.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Container(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Login to your App", style: TextStyle(fontSize: 25)),
              SizedBox(height: 30),
              TextFormField(
                decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                    icon: Padding(
                        padding: const EdgeInsets.all(6),
                        child: Icon(Icons.person)),
                    hintText: "Username",
                    border: InputBorder.none),
              ),
              TextFormField(
                decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                    icon: Padding(
                        padding: const EdgeInsets.all(6),
                        child: Icon(Icons.vpn_key)),
                    hintText: "Password",
                    border: InputBorder.none),
                obscureText: true,
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfilePage()));
                },
                child: Text("Login"),
                elevation: 0,
                highlightElevation: 0,
                color: Colors.blue,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUp()));
                  },
                  child: Text("Don't have an account? Sign up",
                      style: TextStyle(color: Colors.blue)))
            ],
          ),
        ),
      )),
    );
  }
}
