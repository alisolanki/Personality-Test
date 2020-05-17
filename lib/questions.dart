import 'package:flutter/material.dart';

import './data.dart';

class Question extends StatelessWidget {
  final _questionIndex;

  Question(this._questionIndex);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        Data.questionText[_questionIndex]['questionText'],
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
