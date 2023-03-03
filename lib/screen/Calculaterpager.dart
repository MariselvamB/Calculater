// ignore_for_file: file_names

import 'package:calculater/weigets/BttonOvel.dart';
import 'package:calculater/weigets/ButtonRounded.dart';
import 'package:calculater/weigets/Drawer.dart';
import 'package:calculater/weigets/TheamSwitchMode.dart';
import 'package:calculater/weigets/displayWidget.dart';
import 'package:calculater/weigets/endDrawer.dart';
import 'package:calculater/units/units.dart';
import 'package:flutter/material.dart';

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
            children: [
              const TheamSwitchMode(),
              const DisplayWidget(),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ButtonOvelWidget(
                          title: "📱",
                          testColors:
                              Units.darkMode ? Colors.green : Colors.redAccent,
                        ),
                        ButtonOvelWidget(
                          title: "<-",
                          testColors:
                              Units.darkMode ? Colors.green : Colors.redAccent,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ButtonRoundedWidget(
                          title: "AC",
                          testColors:
                              Units.darkMode ? Colors.green : Colors.redAccent,
                        ),
                        ButtonRoundedWidget(
                          title: "(",
                          testColors:
                              Units.darkMode ? Colors.green : Colors.redAccent,
                        ),
                        ButtonRoundedWidget(
                          title: ")",
                          testColors:
                              Units.darkMode ? Colors.green : Colors.redAccent,
                        ),
                        ButtonRoundedWidget(
                          title: "÷",
                          testColors:
                              Units.darkMode ? Colors.green : Colors.redAccent,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ButtonRoundedWidget(
                          title: "7",
                          testColors:
                              Units.darkMode ? Colors.white : Colors.black,
                        ),
                        ButtonRoundedWidget(
                          title: "8",
                          testColors:
                              Units.darkMode ? Colors.white : Colors.black,
                        ),
                        ButtonRoundedWidget(
                          title: "9",
                          testColors:
                              Units.darkMode ? Colors.white : Colors.black,
                        ),
                        ButtonRoundedWidget(
                          title: "X",
                          testColors:
                              Units.darkMode ? Colors.green : Colors.redAccent,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ButtonRoundedWidget(
                          title: "4",
                          testColors:
                              Units.darkMode ? Colors.white : Colors.black,
                        ),
                        ButtonRoundedWidget(
                          title: "5",
                          testColors:
                              Units.darkMode ? Colors.white : Colors.black,
                        ),
                        ButtonRoundedWidget(
                          title: "6",
                          testColors:
                              Units.darkMode ? Colors.white : Colors.black,
                        ),
                        ButtonRoundedWidget(
                          title: "-",
                          testColors:
                              Units.darkMode ? Colors.green : Colors.redAccent,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ButtonRoundedWidget(
                          title: "1",
                          testColors:
                              Units.darkMode ? Colors.white : Colors.black,
                        ),
                        ButtonRoundedWidget(
                          title: "2",
                          testColors:
                              Units.darkMode ? Colors.white : Colors.black,
                        ),
                        ButtonRoundedWidget(
                          title: "3",
                          testColors:
                              Units.darkMode ? Colors.white : Colors.black,
                        ),
                        ButtonRoundedWidget(
                          title: "+",
                          testColors:
                              Units.darkMode ? Colors.green : Colors.redAccent,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ButtonRoundedWidget(
                          title: "%",
                          testColors:
                              Units.darkMode ? Colors.green : Colors.redAccent,
                        ),
                        ButtonRoundedWidget(
                          title: "0",
                          testColors:
                              Units.darkMode ? Colors.white : Colors.black,
                        ),
                        ButtonRoundedWidget(
                          title: ".",
                          testColors:
                              Units.darkMode ? Colors.white : Colors.black,
                        ),
                        ButtonRoundedWidget(
                          title: "=",
                          testColors:
                              Units.darkMode ? Colors.green : Colors.redAccent,
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
}
