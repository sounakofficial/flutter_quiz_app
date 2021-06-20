import 'package:flutter/material.dart';
import 'quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    setState(() {
      _totalScore += score;
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    final _questions = const [
      {
        "questionText": "whats your faviorite color?",
        "answers": [
          {"text": "green", "score": 0},
          {"text": "red", "score": 1},
          {"text": "blue", "score": 0},
        ]
      },
      {
        "questionText": "whats the tallest building?",
        "answers": [
          {"text": "burj khalifa", "score": 1},
          {"text": "taipei 101", "score": 0},
          {"text": "umpair state building", "score": 0},
        ]
      },
      {
        "questionText": "who killed jessica?",
        "answers": [
          {"text": "bob", "score": 0},
          {"text": "ross", "score": 0},
          {"text": "geller", "score": 1},
        ]
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Quiz App"),
          centerTitle: true,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(_questions, _questionIndex, _answerQuestion)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
