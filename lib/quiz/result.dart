import 'package:flutter/material.dart';
import '../dice/dice_roller.dart';

class Result extends StatelessWidget {
  final int total;
  final VoidCallback? resetHandler;

  const Result(this.total, this.resetHandler, {Key? key}) : super(key: key);

  String get resultText {
    if (total <= 8) {
      return 'You are Awesome and Innocent!';
    } else if (total <= 12) {
      return 'You are Strange!';
    } else if (total <= 20) {
      return 'You are so Dope!';
    } else {
      return 'Yes, you did it!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            resultText,
            style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            onPressed: resetHandler,
            child: const Text('Restart a quiz'),
            style: ButtonStyle(
              textStyle: MaterialStateProperty.all(const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
              backgroundColor: MaterialStateProperty.all(Colors.black),
            ),
          ),
          const Center(
            child: DiceRoller(),
          ),
        ],
      ),
    );
  }
}
