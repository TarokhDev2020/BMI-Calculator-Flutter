import 'dart:math';

class Calculator {

  // define some variables
  late final int weight;
  late final int height;
  late double bmi;

  Calculator(this.weight, this.height);

  String calculateBMI() {
    bmi = weight / pow(height / 100, 2);
    return bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (bmi >= 25) {
      return "Overweight";
    }
    else if (bmi > 18.5) {
      return "Normal";
    }
    else {
      return "Underweight";
    }
  }

  String getDescription() {
    if (bmi >= 25) {
      return "You have a higher than normal body weight. Try to excercise more.";
    }
    else if (bmi >= 18.5) {
      return "You have a normal body weight. Good job!";
    }
    else {
      return "You have a lower than normal body weight. You can eat a bit more.";
    }
  }

}