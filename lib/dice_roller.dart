import 'package:flutter/material.dart';
import 'dart:math';

final randmaizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentImage = 2;
  void rollDice() {
    setState(() {
      currentImage = randmaizer.nextInt(6) + 1;
    });
  }

  @override
  @override
  Widget build(contect) {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentImage.png',
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
    );
  }
}
