import 'dart:math';
class CalculatorBrain{
  final int height;
  final int weight;

  double? _bmi;

  CalculatorBrain( this.height,this.weight);

  String getBMI(){
    _bmi = weight/pow(height/100, 2);
    return _bmi!.toStringAsFixed(1);
  }

  String getComment(){
    if(_bmi! >=25){
      return 'You should consider reducing your weight.';
    }
    if(_bmi! <=18.5){
      return 'You should consider increasing your weight.';
    }else {
      return 'You are fit. Keep it up.';
    }
  }

  String getResult(){
    if(_bmi! >=25){
      return 'Over Weight';
    }
    if(_bmi! <=18.5){
      return 'Lean';
    }else {
      return 'Normal';
    }
  }

}