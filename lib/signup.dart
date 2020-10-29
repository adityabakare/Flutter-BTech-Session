import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'ProfilePage.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String name;
  String userName;
  String email;
  String password;

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
                onChanged: (value) {
                  userName = value;
                },
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
                onChanged: (value) {
                  name = value;
                },
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
                onChanged: (value) {
                  email = value;
                },
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
                onChanged: (value) {
                  password = value;
                },
              ),
              RaisedButton(
                onPressed: () {
                  signup();
                },
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

  signup() async {
    try {
      FirebaseAuth auth = FirebaseAuth.instance;
      FirebaseFirestore db = FirebaseFirestore.instance;

      await auth.createUserWithEmailAndPassword(
          email: email, password: password);

      Map<String, dynamic> data = {'name': name, 'userName': userName};

      db.collection('users').doc(email).set(data);

      Navigator.push(
          context, MaterialPageRoute(builder: (context) => ProfilePage()));
    } catch (err) {
      print(err.toString());
    }
  }
}
