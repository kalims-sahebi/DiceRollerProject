import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  //const StyledText({Key}) : super(key: Key);
  const StyledText(this.text, {super.key});
  //String text;

  final String text;

  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 50),
    );
  }
}
