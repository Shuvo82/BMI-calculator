import 'package:flutter/material.dart';
import 'package:bmi_calculator/inputPage.dart';
void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
          color: Color(0xff090c22),
          toolbarHeight: 51
        ),
        // textTheme: const TextTheme(
        //   bodyText2: TextStyle(
        //     color: Colors.white
        //   )
        // ),
        scaffoldBackgroundColor: const Color(0xff090c22),
        //bottomAppBarColor: Colors.deepOrange,
        //primaryColor: const Color(0xff0F1538),
        backgroundColor: Colors.yellowAccent


      ),

      home: InputPage(),
    );
  }
}

