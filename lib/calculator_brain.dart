import 'dart:math';
class CalculatorBrain{
  final int height;
  final int weight;

  double? bmi;

  CalculatorBrain( this.height,this.weight);

  String getBMI(){
    bmi = weight/pow(height/100, 2);
    return bmi!.toStringAsFixed(1);
  }

  String getComment(){
    if(bmi! >=25){
      return 'You should consider reducing your weight.';
    }
    if(bmi! <=18.5){
      return 'You should consider increasing your weight.';
    }else {
      return 'You are fit. Keep it up.';
    }
  }

  String getResult(){
    if(bmi! >=25){
      return 'Over Weight';
    }
    if(bmi! <=18.5){
      return 'Lean';
    }else {
      return 'Normal';
    }
  }

}