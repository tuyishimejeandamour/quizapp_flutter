import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultscore;
  final VoidCallback resethandler;
  const Result(this.resethandler, this.resultscore);

  String get resultPhrase {
    String resultText;

    if (resultscore <= 0) {
      resultText = 'you may suffer form mulnitrition diseases';
    } else if (resultscore <= 12) {
      resultText = "your are good with your choice";
    } else if (resultscore <= 16) {
      resultText = "your are best";
    } else {
      resultText = "you are so bad";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: resethandler,
            child: Text("reset quiz"),
            style: ButtonStyle(
                foregroundColor:
                    MaterialStateProperty.all(Colors.red.shade300)),
          )
        ],
      ),
    );
  }
}
