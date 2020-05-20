import 'package:flutter/material.dart';

import './data.dart';

class Answer extends StatelessWidget {
  final answerStr;
  final Function answerChosen;
  final int score;

  Answer(this.score, this.answerStr, this.answerChosen());

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(
          answerStr,
          style: TextStyle(fontWeight: FontWeight.normal),
          textAlign: TextAlign.center,
        ),
        onPressed: answerChosen,
      ),
    );
  }
}
