// ignore_for_file: file_names

import 'package:calculater/units/units.dart';
import 'package:calculater/weigets/NeuContainer.dart';
import 'package:calculater/weigets/functions.dart';
import 'package:flutter/material.dart';

class ButtonOvelWidget extends StatefulWidget {
  final String title;
  final double padding = 1;
  final Color testColors;
  const ButtonOvelWidget(
      {super.key, required this.testColors, required this.title});

  @override
  State<ButtonOvelWidget> createState() => _ButtonOvelWidgetState();
}

class _ButtonOvelWidgetState extends State<ButtonOvelWidget> {
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
          width: widget.padding * 60,
          height: widget.padding * 35,
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
