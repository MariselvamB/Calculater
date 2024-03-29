import 'package:calculater/screen/LogoPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Calculater',
      debugShowCheckedModeBanner: false,
      home: LogoScreen(),
    );
  }
}
