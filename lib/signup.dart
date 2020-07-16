import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SignUp")),
      body: Container(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("SignUp", style: TextStyle(fontSize: 25)),
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
                        child: Icon(Icons.person)),
                    hintText: "Name",
                    border: InputBorder.none),
              ),
              TextFormField(
                decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                    icon: Padding(
                        padding: const EdgeInsets.all(6),
                        child: Icon(Icons.person)),
                    hintText: "Email",
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
                onPressed: () {},
                child: Text("SignUp"),
                elevation: 0,
                highlightElevation: 0,
                color: Colors.blue,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
