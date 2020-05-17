import 'package:flutter/material.dart';

import './data.dart';

class Answer extends StatelessWidget {
  final Function answerChosen;
  final _answer;

  Answer(this._answer, this.answerChosen);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(
          _answer,
          style: TextStyle(fontWeight: FontWeight.normal),
          textAlign: TextAlign.center,
        ),
        onPressed: answerChosen,
      ),
    );
  }
}
