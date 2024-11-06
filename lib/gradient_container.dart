import 'package:flutter/material.dart';
import 'package:first_project/dice_roller.dart';

// ignore: must_be_immutable
class GradientContainer extends StatelessWidget {
  //const GradientContainer({key}) : super(key: key);
  const GradientContainer(this.color1, this.color2, {super.key});
  const GradientContainer.purplered({super.key})
      : color1 = const Color.fromARGB(255, 216, 12, 26),
        color2 = const Color.fromARGB(255, 154, 32, 224);

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
