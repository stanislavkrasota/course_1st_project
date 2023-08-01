import 'package:flutter/material.dart';
import 'quiz/quiz.dart';
import 'quiz/result.dart';
import 'basic_elements/gradient_container.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _index = 0;
  var _totalScore = 0;

  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1}
      ],
    },
    {
      'questionText': 'What\'s your favorite amimal?',
      'answers': [
        {'text': 'Dog', 'score': 5},
        {'text': 'Cat', 'score': 7},
        {'text': 'Lion', 'score': 10}
      ],
    },
    {
      'questionText': 'What\'s your favorite Hero?',
      'answers': [
        {'text': 'Spider-Man', 'score': 5},
        {'text': 'Iron Man', 'score': 10},
        {'text': 'Green Lantern', 'score': 0},
        {'text': 'Deadpool', 'score': 5}
      ],
    }
  ];

  var noMoreQuestions = false;

  void _answerQuestion(int score) {
    setState(() {
      _totalScore += score;
      if (_index < _questions.length - 1) {
        _index += 1;
      } else {
        noMoreQuestions = true;
      }
    });
  }

  void _resetQuiz() {
    setState(() {
      _index = 0;
      _totalScore = 0;
      noMoreQuestions = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Custom Hero'),
        ),
        body: GradientContainer(
          !noMoreQuestions
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questions: _questions,
                  index: _index)
              : Result(_totalScore, _resetQuiz),
        ),
      ),
    );
  }
}
