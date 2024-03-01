import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(const BMIcalculator());

class BMIcalculator extends StatelessWidget {
  const BMIcalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.blueGrey,
        appBarTheme: const AppBarTheme(backgroundColor: Color(0xFF2c2c3b)),
        scaffoldBackgroundColor: const Color(0xFF0f1527),
        // textTheme: const TextTheme(
        //   bodyLarge: TextStyle(color: Colors.white),
        //   bodyMedium: TextStyle(color: Colors.white),
        //   bodySmall: TextStyle(color: Colors.white),
        // )
      ),
      home: InputPage(),
    );
  }
}
