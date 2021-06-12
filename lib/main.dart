import 'package:first_app/question.dart';
import 'package:flutter/material.dart';

import 'answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionToAnswer = 0;

  var questions = [
    {
      'question': 'which is your favorite food',
      'answer': ['meat', 'rice', 'matoke', 'maize']
    },
    {
      'question': 'what is your favorite fruit ',
      'answer': ['manogo', 'orange', 'pinapple', 'banana']
    },
  ];
  void _answerQuestion() {
    setState(() {
      questionToAnswer = questionToAnswer + 1;
    });
    print(questionToAnswer);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("First title"),
      ),
      body: Column(
        children: [
          Question(
            (questions[questionToAnswer]['question'] as String),
          ),
          ...(questions[questionToAnswer]['answer'] as List<String>).map((e) {
            return Answer(_answerQuestion, e);
          }).toList(),
        ],
      ),
    ));
  }
}
