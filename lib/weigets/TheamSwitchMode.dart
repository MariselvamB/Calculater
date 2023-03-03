// ignore_for_file: file_names

import 'package:calculater/units/units.dart';
import 'package:calculater/weigets/NeuContainer.dart';
import 'package:flutter/material.dart';

class TheamSwitchMode extends StatefulWidget {
  const TheamSwitchMode({super.key});

  @override
  State<TheamSwitchMode> createState() => _TheamSwitchModeState();
}

class _TheamSwitchModeState extends State<TheamSwitchMode> {
  @override
  Widget build(BuildContext context) {
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
}
