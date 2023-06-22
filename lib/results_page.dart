import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Center(child: Text("BMI Calculator")),
    ),
      body: const Text('Hello'),
    );
  }
}
