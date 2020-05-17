import 'package:flutter/material.dart';

import './data.dart';

class Question extends StatelessWidget {
  final questionIndex;

  Question(this.questionIndex);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        Data().questionText[questionIndex].values.elementAt(0),
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
