import 'package:flutter/material.dart';
import 'package:feedback_app/question.dart';
import 'package:feedback_app/slider_response.dart';

class Quiz extends StatelessWidget {
  final Function answerQuestion;
  final List questions;
  final int index;
  Quiz(this.answerQuestion, this.questions, this.index);
  int currentFeedbackValue = 1;
  void setFeedbackValue(int feedbackValue) {
    currentFeedbackValue = feedbackValue;
  }

  static const initFeedbackValue = 3;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      child: Center(
        child: Column(
          children: [
            SizedBox(height: 150),
            Question(questions[index]),
            Answer(
              setFeedbackValue: setFeedbackValue,
              initValue: initFeedbackValue,
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () => answerQuestion(currentFeedbackValue),
              child: Text(
                'Next',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'BalsamiqSans',
                ),
              ),
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.teal,
                onSurface: Colors.grey,
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
              ),
            )
          ],
        ),
      ),
    );
  }
}
