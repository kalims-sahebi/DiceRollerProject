import 'package:flutter/material.dart';
import 'package:first_project/styled_text.dart';

var x;

class GradientContainer extends StatelessWidget {
  //const GradientContainer({key}) : super(key: key);
  const GradientContainer(this.colors, {super.key});
  final List<Color> colors;
  //final Color color1;
  //final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: StyledText('Hello World'),
      ),
    );
  }
}
