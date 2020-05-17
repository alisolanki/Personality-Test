import 'package:flutter/material.dart';

import './data.dart';

class Question extends StatelessWidget {
  var questionIndex;

  Question(this.questionIndex);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(Data().questionText[questionIndex].values.elementAt(0)),
    );
  }
}
