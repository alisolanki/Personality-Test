import 'package:flutter/material.dart';

import './data.dart';
import './answers.dart';
import './questions.dart';

class Quiz extends StatelessWidget {
  var _questionIndex;
  final Function answerChosen;

  Quiz(this._questionIndex, this.answerChosen);

  @override
  Widget build(BuildContext context) {
    return  
    Column(
      children: [
        Question(_questionIndex),
          ...(Data.questionText[_questionIndex]['answerText']
            as List<Map<String, Object>>)
            .map((answerMap) {
              return Answer(answerMap['score'], answerMap['text'],
                () => answerChosen(answerMap['score']));
            }).toList(),
      ],
    );
  }
}