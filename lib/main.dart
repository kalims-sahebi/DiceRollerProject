import 'package:flutter/material.dart';

import 'package:first_project/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          const Color.fromARGB(255, 216, 12, 26),
          const Color.fromARGB(255, 154, 32, 224),
        ),
      ),
    ),
  );
}
