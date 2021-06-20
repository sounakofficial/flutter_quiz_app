import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String _answer;
  final VoidCallback selectHandler;
  Answer(this._answer,this.selectHandler);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 20,right: 20),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.lightBlueAccent),
          foregroundColor: MaterialStateProperty.all(Colors.white),
        ),
        onPressed: selectHandler,
        child: Text(_answer),
      ),
    );
  }
}
