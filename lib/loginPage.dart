import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sityappandativesassessment/registerPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.symmetric(vertical: 30),
                  child:
                      Image(image: AssetImage('assets/images/ativesLogo.png'))),
              Container(
                padding: EdgeInsets.only(bottom: 5),
                alignment: Alignment.topLeft,
                child: Text(
                  'Welcome to atives',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "Let's get you onboarded",
                  style: TextStyle(fontSize: 13),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Sing In",
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10)),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter email",
                      border: InputBorder.none,
                      labelText: "Email"),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10)),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    border: InputBorder.none,
                    labelText: "Password",
                    suffixIcon: Icon(Icons.visibility),
                  ),
                ),
              ),
              
              Container(
                padding: EdgeInsets.only(top: 5),
                alignment: Alignment.topLeft,
                child: const Text(
                  "Forgot Password ?",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "or continue with",
                style: TextStyle(fontSize: 14),
              ),
              Container(
                  margin: EdgeInsets.symmetric(vertical: 30),
                  child: Image(
                      image: AssetImage("assets/images/googlelogin.png"))),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ));
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Color(0xff3159A6),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                    child: Text(
                      "SignIn",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account ? ",
                    style: TextStyle(fontSize: 14),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterPage()));
                    },
                    child: Text(
                      "Register Now",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff3159A6)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
