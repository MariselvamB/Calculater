import 'package:calculater/units/units.dart';
import 'package:math_expressions/math_expressions.dart';

onpressedFunction(value) {
  if (value == "AC") {
    Units.input = "";
    Units.output = "";
  } else if (value == "<-") {
    if (Units.input.isNotEmpty) {
      Units.input = Units.input.substring(0, Units.input.length - 1);
    }
  } else if (value == "=") {
    if (Units.input.isNotEmpty) {
      var userInput = Units.input;
      userInput = Units.input.replaceAll("÷", "/");
      userInput = Units.input.replaceAll("X", "*");
      Parser p = Parser();
      Expression expression = p.parse(userInput);
      ContextModel cm = ContextModel();
      var finalvalue = expression.evaluate(EvaluationType.REAL, cm);
      Units.output = finalvalue.toString();
      if (Units.output.endsWith(".0")) {
        Units.output = Units.output.substring(0, Units.output.length - 2);
      }

      Units.input = Units.output;
      Units.hideinput = true;
    }
  } else {
    Units.input = Units.input + value;
    Units.hideinput = false;
  }
}
