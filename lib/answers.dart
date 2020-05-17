import 'package:flutter/material.dart';

import './data.dart';

class Answer extends StatelessWidget {
  final Function answerChosen;

  Answer(this.answerChosen);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(
          'Answer',
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.normal),
        ),
        onPressed: answerChosen,
      ),
    );
  }
}
