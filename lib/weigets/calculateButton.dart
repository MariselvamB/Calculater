// ignore_for_file: file_names

import 'package:calculater/units/units.dart';
import 'package:calculater/weigets/BttonOvel.dart';
import 'package:calculater/weigets/ButtonRounded.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
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
}
