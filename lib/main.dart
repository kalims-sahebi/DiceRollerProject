import 'package:flutter/material.dart';

import 'package:first_project/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 216, 12, 26),
          Color.fromARGB(255, 154, 32, 224),
        ),
      ),
    ),
  );
}
