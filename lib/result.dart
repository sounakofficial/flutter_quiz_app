import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _totalScore;
  Result(this._totalScore);
  String get resultPhrase {
    String resultText = "you dit it";
    if (_totalScore == 3) {
      resultText = "You Won😁!! your score is: $_totalScore";
    } else if (_totalScore == 2) {
      resultText = "You Missed By a little😐!! your score is: $_totalScore";
    } else
      resultText = "You Failed😢!! your score is: $_totalScore";
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(
          fontSize: 20,
          color: _totalScore == 3
              ? Colors.green
              : _totalScore == 2
                  ? Colors.amber
                  : Colors.red,
        ),
      ),
    );
  }
}
