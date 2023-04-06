// ignore_for_file: file_names

import 'package:calculater/units/units.dart';
import 'package:flutter/material.dart';

class NeuContainer extends StatefulWidget {
  final bool darkMode;
  final Widget child;
  final BorderRadius borderRadius;
  final EdgeInsetsGeometry padding;

  const NeuContainer({
    Key? key,
    this.darkMode = false,
    required this.child,
    required this.borderRadius,
    required this.padding,
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
        padding: widget.padding,
        decoration: BoxDecoration(
            color: Units.darkMode ? Units.colorDark : Units.colorLight,
            borderRadius: widget.borderRadius,
            boxShadow: Units.isPressed
                ? [
                    BoxShadow(
                      color:
                          Units.darkMode ? Colors.grey.shade700 : Colors.white,
                      offset: const Offset(10, 10),
                      blurRadius: 15,
                      spreadRadius: 2,
                    ),
                    BoxShadow(
                      color: Units.darkMode
                          ? Colors.black54
                          : Colors.blueGrey.shade300,
                      offset: const Offset(-10, -10),
                      blurRadius: 15,
                      spreadRadius: 2,
                    ),
                  ]
                : [
                    BoxShadow(
                        color: Units.darkMode
                            ? Colors.black54
                            : Colors.blueGrey.shade300,
                        offset: const Offset(6.0, 6.0),
                        blurRadius: 15,
                        spreadRadius: 1),
                    BoxShadow(
                        color: Units.darkMode
                            ? Colors.grey.shade700
                            : Colors.white,
                        offset: const Offset(-6.0, -6.0),
                        blurRadius: 15,
                        spreadRadius: 2)
                  ]),
        child: widget.child,
      ),
    );
  }

  _onPointerDown(PointerDownEvent event) {
    setState(() {
      Units.isPressed = true;
    });
  }

  _onPointerUp(PointerUpEvent event) {
    setState(() {
      Units.isPressed = false;
    });
  }
}
