// ignore_for_file: file_names

import 'package:calculater/screen/CalculaterScreen.dart';
import 'package:calculater/units/units.dart';
import 'package:flutter/material.dart';

class LogoScreen extends StatefulWidget {
  const LogoScreen({super.key});

  @override
  State<LogoScreen> createState() => _LogoScreenState();
}

class _LogoScreenState extends State<LogoScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3)).then((value) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const CalculaterPage(),
        )));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Units.darkMode ? Units.colorDark : Units.colorLight,
      child: Center(
        child: Column(
          children: [
            Image.asset(
              "assets/Logo.png",
            ),
            Text(
              "KING Calculater",
              style: TextStyle(
                decoration: TextDecoration.none,
                color: Units.darkMode ? Units.colorLight : Units.colorDark,
                shadows: [
                  BoxShadow(
                    color: Units.darkMode ? Colors.grey.shade700 : Colors.white,
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
                ],
                fontSize: 40,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
