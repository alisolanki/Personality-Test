import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  answerChosen() {
    print("Answer chosen!!!");
  }

  @override
  Widget build(BuildContext context) {
    var questions = ['What\'s your name?', 'What\'s your favourite animal?'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Check Your Personality'),
        ),
        body: Column(
          children: [
            Text('Questions :'),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerChosen()
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}
