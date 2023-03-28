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
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CalculaterPage(),
            ));
      },
      child: Container(
        color: Units.darkMode ? Units.colorDark : Units.colorLight,
        child: Center(
            child: Image.asset(
          "assets/Logo.png",
        )),
      ),
    );
  }
}
