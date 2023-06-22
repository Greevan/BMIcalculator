import 'package:bmi_calculator/screens/input_page.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/reusable_card.dart';
import '../components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  final String bmi;
  final String result;
  final String comment;
  const ResultsPage({required this.bmi,required this.result,required this.comment});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: const Center(child: Text("BMI Calculator")),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const Expanded(
            child:  Center(
              child: Text(
                'Your Result',
                style: kResultTextTiltle,
              ),
            ),
          ),
          Expanded(
              flex:5,
              child: ReusableCard(
                custColor: kActiveBoxColor,
                cardChild:  Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:<Widget> [
                    // SizedBox(height: 20),
                    Text(result,style: kResultText,),
                    // SizedBox(height: 70),
                    Text(bmi,style: kResultBMI),
                    // SizedBox(height: 280),
                    Text(comment,style: kResultComment,textAlign: TextAlign.center,),
                  ],
                ),
              ),
          ),
          BottomButton(
            custBottomButtonText: 'Re-Calculate',
            onTap: (){
                Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

}

