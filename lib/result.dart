import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _score;
  final Function restartApp;

  Result(this._score, this.restartApp());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text('Your score is: $_score'),
        ),
        FlatButton(
          onPressed: restartApp,
          child: Text(
            'Restart App',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
