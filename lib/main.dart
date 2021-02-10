import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/answer.dart';
import 'package:flutter_complete_guide/question.dart';
import 'package:flutter_complete_guide/quiz.dart';
import 'package:flutter_complete_guide/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() => _MyAppWidget();
}

class _MyAppWidget extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'Whos your favourate teacher?',
      'answer': [
        {'text': 'shinto', 'score': 5},
        {'text': 'jesus', 'score': 7},
        {'text': 'god', 'score': 10}
      ],
    },
    {
      'questionText': 'Whos your favourate animal?',
      'answer': [
        {'text': 'Lion', 'score': 2},
        {'text': 'Zebre', 'score': 5},
        {'text': 'Pussy', 'score': 10},
      ],
    },
  ];
  var _questionIndex = 0;

  void _answeQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answeQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(
                result: "You did it",
              ),
      ),
    );
  }
}
