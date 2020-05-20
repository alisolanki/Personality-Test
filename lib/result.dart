import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  int _score;
  
  Result(this._score);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
                child: Text('Your score is: $_score'),
              ),
    );
  }
}