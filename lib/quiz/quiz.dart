import 'package:flutter/material.dart';
import 'qustion.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List questions;
  final Function answerQuestion;
  final int index;

  const Quiz(
      {Key? key,
      required this.answerQuestion,
      required this.questions,
      required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[index]['questionText']),
        ...(questions[index]['answers'] as List<Map<String, Object>>)
            .map((a) =>
                Answer(() => answerQuestion(a['score']), a['text'] as String))
            .toList()
      ],
    );
  }
}
