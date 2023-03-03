// ignore_for_file: file_names, constant_identifier_names, non_constant_identifier_names

import 'package:calculater/weigets/NeuContainer.dart';
import 'package:calculater/weigets/units.dart';
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
      backgroundColor: units.darkMode ? units.ColorDark : units.ColorLight,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    units.darkMode
                        ? units.darkMode = false
                        : units.darkMode = true;
                  });
                },
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: _Switchmode(),
                ),
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 5),
                    padding: const EdgeInsets.all(15),
                    alignment: Alignment.centerRight,
                    child: Text(
                      units.input,
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: units.darkMode ? Colors.white : Colors.redAccent,
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
                            fontSize: 25,
                            fontWeight: FontWeight.normal,
                            color: units.darkMode ? Colors.green : Colors.grey,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 30, top: 30),
                        padding: const EdgeInsets.all(15),
                        alignment: Alignment.centerRight,
                        child: Text(
                          units.output,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                            color: units.darkMode ? Colors.green : Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buttonOvel(
                          title: "🕑",
                          TestColors:
                              units.darkMode ? Colors.green : Colors.redAccent,
                        ),
                        _buttonOvel(
                          title: "",
                          TestColors:
                              units.darkMode ? Colors.green : Colors.redAccent,
                        ),
                        _buttonOvel(
                          title: "<-",
                          TestColors:
                              units.darkMode ? Colors.green : Colors.redAccent,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buttonRounded(
                          title: "AC",
                          TestColors:
                              units.darkMode ? Colors.green : Colors.redAccent,
                        ),
                        _buttonRounded(
                          title: "(",
                          TestColors:
                              units.darkMode ? Colors.green : Colors.redAccent,
                        ),
                        _buttonRounded(
                          title: ")",
                          TestColors:
                              units.darkMode ? Colors.green : Colors.redAccent,
                        ),
                        _buttonRounded(
                          title: "÷",
                          TestColors:
                              units.darkMode ? Colors.green : Colors.redAccent,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buttonRounded(
                          title: "7",
                          TestColors:
                              units.darkMode ? Colors.white : Colors.black,
                        ),
                        _buttonRounded(
                          title: "8",
                          TestColors:
                              units.darkMode ? Colors.white : Colors.black,
                        ),
                        _buttonRounded(
                          title: "9",
                          TestColors:
                              units.darkMode ? Colors.white : Colors.black,
                        ),
                        _buttonRounded(
                          title: "X",
                          TestColors:
                              units.darkMode ? Colors.green : Colors.redAccent,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buttonRounded(
                          title: "4",
                          TestColors:
                              units.darkMode ? Colors.white : Colors.black,
                        ),
                        _buttonRounded(
                          title: "5",
                          TestColors:
                              units.darkMode ? Colors.white : Colors.black,
                        ),
                        _buttonRounded(
                          title: "6",
                          TestColors:
                              units.darkMode ? Colors.white : Colors.black,
                        ),
                        _buttonRounded(
                          title: "-",
                          TestColors:
                              units.darkMode ? Colors.green : Colors.redAccent,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buttonRounded(
                          title: "1",
                          TestColors:
                              units.darkMode ? Colors.white : Colors.black,
                        ),
                        _buttonRounded(
                          title: "2",
                          TestColors:
                              units.darkMode ? Colors.white : Colors.black,
                        ),
                        _buttonRounded(
                          title: "3",
                          TestColors:
                              units.darkMode ? Colors.white : Colors.black,
                        ),
                        _buttonRounded(
                          title: "+",
                          TestColors:
                              units.darkMode ? Colors.green : Colors.redAccent,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buttonRounded(
                          title: "%",
                          TestColors:
                              units.darkMode ? Colors.green : Colors.redAccent,
                        ),
                        _buttonRounded(
                          title: "0",
                          TestColors:
                              units.darkMode ? Colors.white : Colors.black,
                        ),
                        _buttonRounded(
                          title: ".",
                          TestColors:
                              units.darkMode ? Colors.white : Colors.black,
                        ),
                        _buttonRounded(
                          title: "=",
                          TestColors:
                              units.darkMode ? Colors.green : Colors.redAccent,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _Switchmode() {
    return NeuContainer(
        darkMode: units.darkMode,
        Child: SizedBox(
          width: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.sunny,
                color: units.darkMode ? Colors.grey : Colors.redAccent,
                size: 20,
              ),
              Icon(
                Icons.nightlight_round,
                color: units.darkMode ? Colors.green : Colors.grey,
                size: 20,
              ),
            ],
          ),
        ),
        borderRadius: BorderRadius.circular(20),
        Padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5));
  }

  _buttonRounded(
      {String? title, double Padding = 1, required Color TestColors}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          OnpressedFunction(title);
        });
      },
      child: NeuContainer(
        darkMode: units.darkMode,
        borderRadius: BorderRadius.circular(50),
        Padding: EdgeInsets.all(Padding),
        Child: SizedBox(
          width: Padding * 50,
          height: Padding * 50,
          child: Center(
            child: Text(
              "$title",
              style: TextStyle(
                  color: TestColors, fontSize: 20, fontWeight: FontWeight.w700),
            ),
          ),
        ),
      ),
    );
  }

  _buttonOvel({String? title, double Padding = 1, required Color TestColors}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          OnpressedFunction(title);
        });
      },
      child: NeuContainer(
        darkMode: units.darkMode,
        borderRadius: BorderRadius.circular(50),
        Padding: EdgeInsets.all(Padding),
        Child: SizedBox(
          width: Padding * 60,
          height: Padding * 35,
          child: Center(
            child: Text(
              "$title",
              style: TextStyle(
                  color: TestColors, fontSize: 20, fontWeight: FontWeight.w700),
            ),
          ),
        ),
      ),
    );
  }

  OnpressedFunction(Value) {
    if (Value == "AC") {
      units.input = "";
      units.output = "";
    } else if (Value == "<-") {
      if (units.input.isNotEmpty) {
        units.input = units.input.substring(0, units.input.length - 1);
      }
    } else if (Value == "=") {
      if (units.input.isNotEmpty) {
        var userInput = units.input;
        userInput = units.input.replaceAll("÷", "/");
        userInput = units.input.replaceAll("X", "*");
        Parser p = Parser();
        Expression expression = p.parse(userInput);
        ContextModel cm = ContextModel();
        var finalvalue = expression.evaluate(EvaluationType.REAL, cm);
        units.output = finalvalue.toString();
        if (units.output.endsWith(".0")) {}
        units.output = units.output.substring(0, units.output.length - 2);
        units.input = units.output;
        units.hideinput = true;
      }
    } else {
      units.input = units.input + Value;
      units.hideinput = false;
    }
  }
}
