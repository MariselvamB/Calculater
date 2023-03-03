// ignore_for_file: file_names

import 'package:calculater/units/units.dart';
import 'package:flutter/material.dart';

class DisplayWidget extends StatefulWidget {
  const DisplayWidget({super.key});

  @override
  State<DisplayWidget> createState() => _DisplayWidgetState();
}

class _DisplayWidgetState extends State<DisplayWidget> {
  @override
  Widget build(BuildContext context) {
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
              margin: const EdgeInsets.only(bottom: 30, top: 30),
              padding: const EdgeInsets.all(15),
              alignment: Alignment.centerLeft,
              child: Text(
                "=",
                style: TextStyle(
                  fontSize: 25,
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
}
