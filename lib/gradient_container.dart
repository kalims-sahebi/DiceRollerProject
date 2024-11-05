import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GradientContainer extends StatelessWidget {
  //const GradientContainer({key}) : super(key: key);
  GradientContainer(this.color1, this.color2, {super.key});
  GradientContainer.purplered({super.key})
      : color1 = const Color.fromARGB(255, 216, 12, 26),
        color2 = const Color.fromARGB(255, 154, 32, 224);

  final Color color1;
  final Color color2;
  var activeDice = 'assets/images/dice-5.png';
  void rollDice() {
    activeDice = 'assets/images/dice-3.png';
    //print('Changing ...');
  }

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
      child: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              activeDice,
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
