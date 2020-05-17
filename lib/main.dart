import 'package:flutter/material.dart';

import './questions.dart';
import './answers.dart';

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
    var _questions = [
      {
        'questionText': 'What\'s your name?',
        'answerText': ['Ali', 'Someone', 'RandomGuy', 'RandomGirl'],
      },
      {
        'questionText': 'What\'s your favourite colour?',
        'answerText': ['Red', 'Blue', 'Black', 'White'],
      },
      {
        'questionText': 'What\'s your favourite animal?',
        'answerText': ['Horse', 'Dog', 'Cat', 'Lion'],
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Check Your Personality'),
        ),
        body: Column(
          children: [
            Question(_questionIndex),
            RaisedButton(
              child: Answer(_questionIndex),
              onPressed: _answerChosen,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: _answerChosen,
            ),
          ],
        ),
      ),
    );
  }
}
