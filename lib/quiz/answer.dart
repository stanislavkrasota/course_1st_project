import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback? selectHandler;
  final String answerText;

  const Answer(this.selectHandler, this.answerText, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: selectHandler,
        child: Text(answerText),
        style: ButtonStyle(
          textStyle: MaterialStateProperty.all(const TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
          backgroundColor: MaterialStateProperty.all(Colors.redAccent),
        ),
      ),
    );
  }
}
