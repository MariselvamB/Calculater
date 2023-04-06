// ignore_for_file: file_names

import 'package:calculater/units/units.dart';
import 'package:calculater/weigets/TheamSwitchMode.dart';
import 'package:calculater/weigets/calculateButton.dart';
import 'package:calculater/weigets/displayWidget.dart';
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
      backgroundColor: Units.darkMode ? Units.colorDark : Units.colorLight,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                TheamSwitchMode(),
                DisplayWidget(),
                CalculateButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
