import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sityappandativesassessment/alertBox.dart';

class WishlistPage extends StatefulWidget {
  @override
  _WishlistPageState createState() => _WishlistPageState();
}

class _WishlistPageState extends State<WishlistPage> {
  Color option1Color = Colors.white;
  Color option2Color = Colors.white;
  Color option3Color = Colors.white;

  void selectOption1() {
    setState(() {
      option1Color = Color(0xff3159A6);
      option2Color = Colors.white;
      option3Color = Colors.white;
    });
  }

  void selectOption2() {
    setState(() {
      option1Color = Colors.white;
      option2Color = Color(0xff3159A6);
      option3Color = Colors.white;
    });
  }

  void selectOption3() {
    setState(() {
      option1Color = Colors.white;
      option2Color = Colors.white;
      option3Color = Color(0xff3159A6);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.symmetric(vertical: 30),
                  child:
                      Image(image: AssetImage('assets/images/ativesLogo.png'))),
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "Your app adventure starts here!",
                  style: TextStyle(fontSize: 14),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 10),
                alignment: Alignment.topLeft,
                child: const Text(
                  "What's on your wishlist?",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: selectOption1,
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  margin:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  decoration: BoxDecoration(
                    color: option1Color,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "I am looking for an artist",
                        style: TextStyle(
                            fontSize: 18.0,
                            color: option1Color == Color(0xff3159A6)
                                ? Colors.white
                                : Colors.black),
                      ),
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: selectOption2,
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  margin:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  decoration: BoxDecoration(
                    color: option2Color,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "I am just exploring",
                        style: TextStyle(
                            fontSize: 18.0,
                            color: option2Color == Color(0xff3159A6)
                                ? Colors.white
                                : Colors.black),
                      ),
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: selectOption3,
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  margin:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  decoration: BoxDecoration(
                    color: option3Color,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "I am an artist",
                        style: TextStyle(
                            fontSize: 18.0,
                            color: option3Color == Color(0xff3159A6)
                                ? Colors.white
                                : Colors.black),
                      ),
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              GestureDetector(
                onTap: () {
                  (option1Color == Color(0xff3159A6) ||
                          option2Color == Color(0xff3159A6) ||
                          option3Color == Color(0xff3159A6))
                      ? () {
                          OptionSelectorDialog();
                        }
                      : null;
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: (option1Color == Color(0xff3159A6) ||
                              option2Color == Color(0xff3159A6) ||
                              option3Color == Color(0xff3159A6))
                          ? Color(0xff3159A6)
                          : Colors.grey,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                    child: Text(
                      "Continue",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
