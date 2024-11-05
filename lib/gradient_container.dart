import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  //const GradientContainer({key}) : super(key: key);
  const GradientContainer(this.colors, {super.key});
  final List<Color> colors;
  //final Color color1;
  //final Color color2;

  void rollDice() {}
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
      child: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/dice-5.png',
              width: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.black,
                textStyle: const TextStyle(fontSize: 28),
              ),
              onPressed: rollDice,
              child: const Text('Roll Dice'),
            ),
          ],
        ),
      ),
    );
  }
}
