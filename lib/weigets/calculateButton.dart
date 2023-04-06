// ignore_for_file: file_names

import 'package:calculater/units/units.dart';
import 'package:calculater/weigets/NeuContainer.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculateButton extends StatefulWidget {
  const CalculateButton({super.key});

  @override
  State<CalculateButton> createState() => _CalculateButtonState();
}

class _CalculateButtonState extends State<CalculateButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buttonOvelWidget(
              title: "CE",
              testColors: Units.darkMode ? Colors.green : Colors.redAccent,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buttonRoundedWidget(
              title: "AC",
              testColors: Units.darkMode ? Colors.green : Colors.redAccent,
            ),
            buttonRoundedWidget(
              title: "(",
              testColors: Units.darkMode ? Colors.green : Colors.redAccent,
            ),
            buttonRoundedWidget(
              title: ")",
              testColors: Units.darkMode ? Colors.green : Colors.redAccent,
            ),
            buttonRoundedWidget(
              title: "÷",
              testColors: Units.darkMode ? Colors.green : Colors.redAccent,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buttonRoundedWidget(
              title: "7",
              testColors: Units.darkMode ? Colors.white : Colors.black,
            ),
            buttonRoundedWidget(
              title: "8",
              testColors: Units.darkMode ? Colors.white : Colors.black,
            ),
            buttonRoundedWidget(
              title: "9",
              testColors: Units.darkMode ? Colors.white : Colors.black,
            ),
            buttonRoundedWidget(
              title: "x",
              testColors: Units.darkMode ? Colors.green : Colors.redAccent,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buttonRoundedWidget(
              title: "4",
              testColors: Units.darkMode ? Colors.white : Colors.black,
            ),
            buttonRoundedWidget(
              title: "5",
              testColors: Units.darkMode ? Colors.white : Colors.black,
            ),
            buttonRoundedWidget(
              title: "6",
              testColors: Units.darkMode ? Colors.white : Colors.black,
            ),
            buttonRoundedWidget(
              title: "-",
              testColors: Units.darkMode ? Colors.green : Colors.redAccent,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buttonRoundedWidget(
              title: "1",
              testColors: Units.darkMode ? Colors.white : Colors.black,
            ),
            buttonRoundedWidget(
              title: "2",
              testColors: Units.darkMode ? Colors.white : Colors.black,
            ),
            buttonRoundedWidget(
              title: "3",
              testColors: Units.darkMode ? Colors.white : Colors.black,
            ),
            buttonRoundedWidget(
              title: "+",
              testColors: Units.darkMode ? Colors.green : Colors.redAccent,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buttonRoundedWidget(
              title: "%",
              testColors: Units.darkMode ? Colors.green : Colors.redAccent,
            ),
            buttonRoundedWidget(
              title: "0",
              testColors: Units.darkMode ? Colors.white : Colors.black,
            ),
            buttonRoundedWidget(
              title: ".",
              testColors: Units.darkMode ? Colors.white : Colors.black,
            ),
            buttonRoundedWidget(
              title: "=",
              testColors: Units.darkMode ? Colors.green : Colors.redAccent,
            ),
          ],
        ),
      ],
    );
  }

  buttonOvelWidget(
      {required String title, double padding = 1, required Color testColors}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          onpressedFunction(title);
        });
      },
      child: NeuContainer(
        darkMode: Units.darkMode,
        borderRadius: BorderRadius.circular(50),
        padding: EdgeInsets.all(padding),
        child: SizedBox(
          width: padding * 60,
          height: padding * 35,
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                  color: testColors, fontSize: 20, fontWeight: FontWeight.w700),
            ),
          ),
        ),
      ),
    );
  }

  buttonRoundedWidget(
      {required String title, double padding = 1, required Color testColors}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          onpressedFunction(title);
        });
      },
      child: NeuContainer(
        darkMode: Units.darkMode,
        borderRadius: BorderRadius.circular(50),
        padding: EdgeInsets.all(padding),
        child: SizedBox(
          width: padding * 50,
          height: padding * 50,
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                  color: testColors, fontSize: 20, fontWeight: FontWeight.w700),
            ),
          ),
        ),
      ),
    );
  }

  onpressedFunction(value) {
    if (value == "AC") {
      Units.input = "";
      Units.output = "";
    } else if (value == "CE") {
      if (Units.input.isNotEmpty) {
        Units.input = Units.input.substring(0, Units.input.length - 1);
      }
    } else if (value == "=") {
      if (Units.input.isNotEmpty) {
        var userInput = Units.input;
        if (userInput.contains("÷")) {
          userInput = userInput.replaceAll("÷", "/");
        }
        if (userInput.contains("x")) {
          userInput = userInput.replaceAll("x", "*");
        }

        Parser p = Parser();
        Expression expression = p.parse(userInput);
        ContextModel cm = ContextModel();
        var finalvalue = expression.evaluate(EvaluationType.REAL, cm);
        Units.output = finalvalue.toString();
        if (Units.output.endsWith(".0")) {
          Units.output = Units.output.substring(0, Units.output.length - 2);
        }
        Units.hideinput = true;
      }
    } else {
      Units.input = Units.input + value;
      Units.hideinput = false;
    }
  }
}
