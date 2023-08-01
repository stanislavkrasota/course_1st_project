import 'package:flutter/material.dart';
import '../basic_elements/header.text.dart';

class Question extends StatelessWidget {
  final String questionText;

  const Question(this.questionText, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: HeaderText(
        questionText,
      ),
      width: double.infinity,
      margin: const EdgeInsets.all(12),
    );
  }
}
