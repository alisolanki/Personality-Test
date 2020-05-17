import 'package:flutter/material.dart';

import './data.dart';

class Answer extends StatelessWidget {
  final Function answerChosen;
  final answerIndex;
  final questionIndex;

  Answer(this.questionIndex, this.answerIndex, this.answerChosen);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(
          Data().questionText[questionIndex]['answerIndex'],
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.normal),
        ),
        onPressed: answerChosen,
      ),
    );
  }
}
