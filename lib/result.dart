import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final List<Map<String, dynamic>> result = [
    {
      "text": 'We are sorry for your inconvenience',
      "color": Colors.red,
    },
    {"text": 'Hope we serve you better next time', "color": Colors.yellow},
    {
      "text": 'We hope you come back next time',
      "color": Colors.green,
    },
  ];
  final int finalscore;
  final void Function() resetfunction;
  Result(this.finalscore, this.resetfunction);

  Map get results {
    var finalResult;
    if (finalscore >= 1 && finalscore <= 10) finalResult = result[0];
    if (finalscore >= 11 && finalscore <= 20) finalResult = result[1];
    if (finalscore >= 21 && finalscore <= 30) finalResult = result[2];
    return finalResult;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thank you for your feedback!'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 150),
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.black12,
                border: Border.all(width: 5, color: Colors.redAccent),
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: Text(
                results['text'],
                style: TextStyle(
                  fontSize: 40,
                  color: results['color'],
                ),
              ),
            ),
            SizedBox(height: 50),
            TextButton(
              onPressed: resetfunction,
              child: Text(
                'Restart',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.teal,
                onSurface: Colors.grey,
                padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
              ),
            )
          ],
        ),
      ),
    );
  }
}
