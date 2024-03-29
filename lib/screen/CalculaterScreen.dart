// ignore_for_file: file_names

import 'package:calculater/units/units.dart';
import 'package:calculater/weigets/NeuContainer.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculaterPage extends StatefulWidget {
  const CalculaterPage({super.key});

  @override
  State<CalculaterPage> createState() => _CalculaterPageState();
}

class _CalculaterPageState extends State<CalculaterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Units.darkMode ? Units.colorDark : Units.colorLight,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [theamSwitchMode(), displayWidget(), calculateButton()],
            ),
          ),
        ),
      ),
    );
  }

  theamSwitchMode() {
    return GestureDetector(
      onTap: () {
        setState(() {
          Units.darkMode ? Units.darkMode = false : Units.darkMode = true;
        });
      },
      child: Container(
        alignment: Alignment.centerLeft,
        child: NeuContainer(
            darkMode: Units.darkMode,
            borderRadius: BorderRadius.circular(20),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: SizedBox(
              width: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.sunny,
                    color: Units.darkMode ? Colors.grey : Colors.redAccent,
                    size: 20,
                  ),
                  Icon(
                    Icons.nightlight_round,
                    color: Units.darkMode ? Colors.green : Colors.grey,
                    size: 20,
                  ),
                ],
              ),
            )),
      ),
    );
  }

  displayWidget() {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 5),
          padding: const EdgeInsets.all(15),
          alignment: Alignment.centerRight,
          child: Text(
            Units.input,
            style: TextStyle(
              overflow: TextOverflow.fade,
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Units.darkMode ? Colors.white : Colors.redAccent,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 30, top: 30),
              padding: const EdgeInsets.all(15),
              alignment: Alignment.centerLeft,
              child: Text(
                "=",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.normal,
                  color: Units.darkMode ? Colors.green : Colors.grey,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 30, top: 30),
              padding: const EdgeInsets.all(15),
              alignment: Alignment.centerRight,
              child: Text(
                Units.output,
                style: TextStyle(
                  overflow: TextOverflow.ellipsis,
                  fontSize: 25,
                  fontWeight: FontWeight.normal,
                  color: Units.darkMode ? Colors.green : Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  calculateButton() {
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
