import 'dart:math';

class QuizBrain {
  int height;
  int weight;

  QuizBrain({required this.height, required this.weight});

  double _bmi = 0;

  String getBMICalc() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getUpperText() {
    if (_bmi >= 25) {
      return 'OverWieght';
    } else if (_bmi >= 12 && _bmi < 25) {
      return 'Thats Great';
    } else {
      return 'You are very thin';
    }
  }

  String getDownText() {
    if (_bmi >= 25) {
      return 'You Need to Practic some sports';
    } else if (_bmi >= 12) {
      return 'You are perfect stay like that ^_^';
    } else {
      return 'You must get some fats';
    }
  }
}
