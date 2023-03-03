// ignore_for_file: file_names

import 'package:flutter/material.dart';

class EndDrawerDetails extends StatefulWidget {
  const EndDrawerDetails({super.key});

  @override
  State<EndDrawerDetails> createState() => _EndDrawerDetailsState();
}

class _EndDrawerDetailsState extends State<EndDrawerDetails> {
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
