// ignore_for_file: file_names

import 'package:calculater/units/units.dart';
import 'package:calculater/weigets/NeuContainer.dart';
import 'package:calculater/weigets/functions.dart';
import 'package:flutter/material.dart';

class ButtonRoundedWidget extends StatefulWidget {
  final String title;
  final double padding = 1;
  final Color testColors;
  const ButtonRoundedWidget(
      {super.key, required this.testColors, required this.title});

  @override
  State<ButtonRoundedWidget> createState() => _ButtonRoundedWidgetState();
}

class _ButtonRoundedWidgetState extends State<ButtonRoundedWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          onpressedFunction(widget.title);
        });
      },
      child: NeuContainer(
        darkMode: Units.darkMode,
        borderRadius: BorderRadius.circular(50),
        padding: EdgeInsets.all(widget.padding),
        child: SizedBox(
          width: widget.padding * 50,
          height: widget.padding * 50,
          child: Center(
            child: Text(
              widget.title,
              style: TextStyle(
                  color: widget.testColors,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ),
      ),
    );
  }
}
