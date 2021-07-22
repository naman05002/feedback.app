import 'package:flutter/material.dart';
import 'package:feedback_app/quiz.dart';
import 'package:feedback_app/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int index = 0;
  int resultScore = 0;

  void resetApp() {
    setState(() {
      index = 0;
      resultScore = 0;
    });
  }

  void answerQuestion(int sliderValue) {
    setState(() {
      resultScore += sliderValue;
      index++;
    });
  }

  List questions = [
    'How did you like our Service?',
    'How did you appreciate the Santiation?',
    'How was the Sound Quality?',
    'How was the Lighting?',
    'How likely are you to reccomend us to your friends?',
    'How likely are you to come back here?',
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'BalsamiqSans'),
      home: Scaffold(
          body: index < 5
              ? Quiz(answerQuestion, questions, index)
              : Center(
                  child: Result(resultScore, resetApp),
                )),
      debugShowCheckedModeBanner: false,
    );
  }
}
