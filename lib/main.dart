import 'package:flutter/material.dart';

import './questions.dart';
import './answers.dart';
import './data.dart';

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

  void _answerChosen() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Check Your Personality'),
        ),
        body: Column(
          children: [
            Question(_questionIndex),
            ...(Data().questionText[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_questionIndex, answer, _answerChosen);
            }).toList(),
          ],
        ),
      ),
    );
  }
}
