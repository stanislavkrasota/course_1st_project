import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({Key? key}) : super(key: key);

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  void rollDice() {
    setState(() {});
  }

  String getDiceImagePath() {
    var randomDice = (randomizer.nextInt(6) + 1).toString();
    return 'assets/images/dice-$randomDice.png';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          getDiceImagePath(),
          width: 200,
        ),
        TextButton(
          onPressed: rollDice,
          child: const Text('Roll dice'),
          style: TextButton.styleFrom(
            textStyle: const TextStyle(fontSize: 28),
            padding: const EdgeInsets.only(top: 20),
          ),
        )
      ],
    );
  }
}
