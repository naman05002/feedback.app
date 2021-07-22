import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Text(
        questionText,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 30,
        ),
      ),
    );
  }
}
