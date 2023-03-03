// ignore_for_file: file_names

import 'package:flutter/material.dart';

class DrawerDetails extends StatefulWidget {
  const DrawerDetails({super.key});

  @override
  State<DrawerDetails> createState() => _DrawerDetailsState();
}

class _DrawerDetailsState extends State<DrawerDetails> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.all(20),
          children: [
            Column(
              children: const [
                Card(
                  elevation: 2,
                  color: Colors.amber,
                ),
                Card(
                  elevation: 2,
                  color: Colors.amber,
                ),
                Card(
                  elevation: 2,
                  color: Colors.amber,
                ),
                Card(
                  elevation: 2,
                  color: Colors.amber,
                ),
                Card(
                  elevation: 2,
                  color: Colors.amber,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
