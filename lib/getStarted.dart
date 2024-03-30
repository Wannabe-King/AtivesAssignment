import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sityappandativesassessment/loginPage.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.65,
            decoration: BoxDecoration(color: Colors.amber),
          ),
          Container(
            padding: EdgeInsets.only(top: 50),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment(0.8, 1),
                colors: <Color>[
                  Color(0xff3988D6),
                  Color(0xff3159A6),
                ], // Gradient from https://learnui.design/tools/gradient-generator.html
                tileMode: TileMode.mirror,
              ),
            ),
            height: MediaQuery.of(context).size.height * 0.35,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Text(
                  "Welcome to Atives!",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20,
                      letterSpacing: 2),
                ),
                SizedBox(
                  height: 20,
                ),
                const Text(
                  "CONNECTING CREATIVES",
                  style: TextStyle(
                      fontSize: 16, letterSpacing: 3, color: Color(0x78ffffff)),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ));
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                      child: Text(
                        "Start Exploring",
                        style: TextStyle(
                            color: Color(0xff3159A6),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
