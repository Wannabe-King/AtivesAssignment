import 'package:flutter/material.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 500,
            decoration: BoxDecoration(color: Colors.amber),
          ),
          Container(
            decoration: BoxDecoration(color:Color(0xff3988D6)),
            child: Column(children: [
              Text("Welcome to Atvie"),
              SizedBox(height: 20,),
              Container(
                
                child: const Text("Start Exploring!"),
              )

            ],),
          )
        ],
      ),
    );
  }
}
