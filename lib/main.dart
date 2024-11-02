import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
          body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 255, 68, 81),
              Color.fromARGB(255, 149, 43, 210),
            ],
          ),
        ),
        child: const Center(
          child: Text('Hello World!'),
        ),
      )),
    ),
  );
}
//testing git
