import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.heigth, this.weight});
  final int heigth;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(heigth / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResults() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal bodyweight. Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Good Job!';
    } else {
      return 'You havew a lower than normal bodyweight. You can eat more.';
    }
  }
}
