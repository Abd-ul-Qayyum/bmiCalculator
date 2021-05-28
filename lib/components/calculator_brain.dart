import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});
  final int height;
  final int weight;

  double _bmi;

  String calculateBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi > 25) {
      return "Over Weight";
    } else if (_bmi == 18.5 && _bmi < 25) {
      return "Normal";
    } else {
      return "Low Weight";
    }
  }

  String getInterPretations(){
    if (_bmi > 25) {
      return "You should walk daily and should take precautions to lessen your weight";
    } else if (_bmi == 18.5 && _bmi < 25) {
      return "Great! You are physically strong ";
    } else {
      return "You are physically weak you should eat more";
    }
  }
}
