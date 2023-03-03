// ignore_for_file: file_names

import 'package:calculater/weigets/Drawer.dart';
import 'package:calculater/weigets/NeuContainer.dart';
import 'package:calculater/weigets/TheamSwitchMode.dart';
import 'package:calculater/weigets/calculateButton.dart';
import 'package:calculater/weigets/displayWidget.dart';
import 'package:calculater/weigets/endDrawer.dart';
import 'package:calculater/units/units.dart';

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
      drawer: const DrawerDetails(),
      endDrawer: const EndDrawerDetails(),
      backgroundColor: Units.darkMode ? Units.colorDark : Units.colorLight,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [TheamSwitchMode(), DisplayWidget(), CalculateButton()],
          ),
        ),
      ),
    );
  }

  TheamSwitchMode() {
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

  DisplayWidget() {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 5),
          padding: const EdgeInsets.all(15),
          alignment: Alignment.centerRight,
          child: Text(
            Units.input,
            style: TextStyle(
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
              margin: const EdgeInsets.only(bottom: 30, top: 20),
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
                  fontSize: 20,
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

  CalculateButton() {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ButtonOvelWidget(
                title: "📱",
                testColors: Units.darkMode ? Colors.green : Colors.redAccent,
              ),
              ButtonOvelWidget(
                title: "<-",
                testColors: Units.darkMode ? Colors.green : Colors.redAccent,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ButtonRoundedWidget(
                title: "AC",
                testColors: Units.darkMode ? Colors.green : Colors.redAccent,
              ),
              ButtonRoundedWidget(
                title: "(",
                testColors: Units.darkMode ? Colors.green : Colors.redAccent,
              ),
              ButtonRoundedWidget(
                title: ")",
                testColors: Units.darkMode ? Colors.green : Colors.redAccent,
              ),
              ButtonRoundedWidget(
                title: "÷",
                testColors: Units.darkMode ? Colors.green : Colors.redAccent,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ButtonRoundedWidget(
                title: "7",
                testColors: Units.darkMode ? Colors.white : Colors.black,
              ),
              ButtonRoundedWidget(
                title: "8",
                testColors: Units.darkMode ? Colors.white : Colors.black,
              ),
              ButtonRoundedWidget(
                title: "9",
                testColors: Units.darkMode ? Colors.white : Colors.black,
              ),
              ButtonRoundedWidget(
                title: "X",
                testColors: Units.darkMode ? Colors.green : Colors.redAccent,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ButtonRoundedWidget(
                title: "4",
                testColors: Units.darkMode ? Colors.white : Colors.black,
              ),
              ButtonRoundedWidget(
                title: "5",
                testColors: Units.darkMode ? Colors.white : Colors.black,
              ),
              ButtonRoundedWidget(
                title: "6",
                testColors: Units.darkMode ? Colors.white : Colors.black,
              ),
              ButtonRoundedWidget(
                title: "-",
                testColors: Units.darkMode ? Colors.green : Colors.redAccent,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ButtonRoundedWidget(
                title: "1",
                testColors: Units.darkMode ? Colors.white : Colors.black,
              ),
              ButtonRoundedWidget(
                title: "2",
                testColors: Units.darkMode ? Colors.white : Colors.black,
              ),
              ButtonRoundedWidget(
                title: "3",
                testColors: Units.darkMode ? Colors.white : Colors.black,
              ),
              ButtonRoundedWidget(
                title: "+",
                testColors: Units.darkMode ? Colors.green : Colors.redAccent,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ButtonRoundedWidget(
                title: "%",
                testColors: Units.darkMode ? Colors.green : Colors.redAccent,
              ),
              ButtonRoundedWidget(
                title: "0",
                testColors: Units.darkMode ? Colors.white : Colors.black,
              ),
              ButtonRoundedWidget(
                title: ".",
                testColors: Units.darkMode ? Colors.white : Colors.black,
              ),
              ButtonRoundedWidget(
                title: "=",
                testColors: Units.darkMode ? Colors.green : Colors.redAccent,
              ),
            ],
          ),
        ],
      ),
    );
  }

  ButtonOvelWidget(
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

  ButtonRoundedWidget(
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
}
