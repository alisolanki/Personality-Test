import 'package:flutter/material.dart';

import './questions.dart';
import './answers.dart';
import './data.dart';
import './result.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _score = 0;

  void answerChosen(int answer) {
    setState(() {
      _score += answer;
      _questionIndex = _questionIndex + 1;
    });
    print(answer);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Check Your Personality'),
        ),
        body: _questionIndex < Data.questionText.length
            ? Quiz(_questionIndex, answerChosen)
            : Result(_score),
      ),
    );
  }
}
