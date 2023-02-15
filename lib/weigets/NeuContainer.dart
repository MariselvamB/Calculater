// ignore_for_file: file_names, non_constant_identifier_names

import 'package:calculater/weigets/Calculaterpager.dart';
import 'package:calculater/weigets/units.dart';
import 'package:flutter/material.dart';

class NeuContainer extends StatefulWidget {
  final bool darkMode;
  final Widget Child;
  final BorderRadius borderRadius;
  final EdgeInsetsGeometry Padding;

  const NeuContainer({
    Key? key,
    this.darkMode = false,
    required this.Child,
    required this.borderRadius,
    required this.Padding,
  }) : super(
          key: key,
        );

  @override
  State<NeuContainer> createState() => _NeuContainerState();
}

class _NeuContainerState extends State<NeuContainer> {
  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerUp: _onPointerUp,
      onPointerDown: _onPointerDown,
      child: Container(
        margin: const EdgeInsets.all(10),
        padding: widget.Padding,
        decoration: BoxDecoration(
            color: units.darkMode ? units.ColorDark : units.ColorLight,
            borderRadius: widget.borderRadius,
            boxShadow: units.isPressed
                ? null
                : [
                    BoxShadow(
                        color: units.darkMode
                            ? Colors.black54
                            : Colors.blueGrey.shade300,
                        offset: const Offset(6.0, 6.0),
                        blurRadius: 15,
                        spreadRadius: 2),
                    BoxShadow(
                        color: units.darkMode
                            ? Colors.grey.shade700
                            : Colors.white,
                        offset: const Offset(-6.0, -6.0),
                        blurRadius: 15,
                        spreadRadius: 2)
                  ]),
        child: widget.Child,
      ),
    );
  }

  _onPointerDown(PointerDownEvent event) {
    setState(() {
      units.isPressed = true;
    });
  }

  _onPointerUp(PointerUpEvent event) {
    setState(() {
      units.isPressed = false;
    });
  }
}
