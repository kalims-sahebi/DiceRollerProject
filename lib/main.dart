import 'package:flutter/material.dart';

import 'package:first_project/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          [
            Color.fromARGB(255, 255, 68, 81),
            Color.fromARGB(255, 149, 43, 210),
          ],
        ),
      ),
    ),
  );
}
