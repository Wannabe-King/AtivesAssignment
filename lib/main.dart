import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sityappandativesassessment/createProfile.dart';
import 'package:sityappandativesassessment/getStarted.dart';
import 'package:sityappandativesassessment/interest.dart';
import 'package:sityappandativesassessment/loginPage.dart';
import 'package:sityappandativesassessment/wishListPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
        useMaterial3: true,
      ),
      home: InterestPage(),
    );
  }
}
