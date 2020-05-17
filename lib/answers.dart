import 'package:flutter/material.dart';

import './data.dart';

class Answer extends StatelessWidget {
  var questionIndex;

  Answer(this.questionIndex);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(Data().questionText[questionIndex].values.elementAt(1)),
      child: Text(Data().questionText[questionIndex].values.elementAt(1)),
      child: Text(Data().questionText[questionIndex].values.elementAt(1)),
      child: Text(Data().questionText[questionIndex].values.elementAt(1)),
    );
  }
}