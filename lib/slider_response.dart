import 'package:flutter/material.dart';

class Answer extends StatefulWidget {
  final Function setFeedbackValue;
  final int initValue;
  Answer({required this.setFeedbackValue, required this.initValue});

  @override
  _AnswerState createState() => _AnswerState();
}

class _AnswerState extends State<Answer> {
  int value = 1;
  List sliderLabel = [
    'Very Poor',
    'Poor',
    'Average',
    'Good',
    'Excellent',
  ];
  void setValue(double val) {
    setState(() {
      value = val.round();
    });
    widget.setFeedbackValue(value);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Slider(
          onChanged: (val) {
            setValue(val);
          },
          value: value.toDouble(),
          min: 1,
          max: 5,
          divisions: 4,
          label: sliderLabel[value - 1],
        )
      ],
    );
  }
}
