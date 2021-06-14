import 'package:first_app/quiz.dart';
import 'package:first_app/result.dart';
import 'package:flutter/material.dart';

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
  var _totalscore = 0;

  final _questions = const [
    {
      'question': 'which is your favorite food',
      'answer': [
        {'text': 'meat', 'score': 10},
        {'text': 'rice', 'score': 6},
        {'text': 'matoke', 'score': 3},
        {'text': 'maize', 'score': 2}
      ]
    },
    {
      'question': 'what is your favorite fruit ',
      'answer': [
        {'text': 'manogo', 'score': 10},
        {'text': 'orange', 'score': 6},
        {'text': 'pinapple', 'score': 3},
        {'text': 'banana', 'score': 2}
      ]
    },
  ];
  void _answerQuestion(int score) {
    _totalscore += score;
    setState(() {
      questionToAnswer = questionToAnswer + 1;
    });
    //print(questionToAnswer);
  }

  void _resetQuiz() {
    setState(() {
      questionToAnswer = 0;
      _totalscore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("First title"),
      ),
      body: questionToAnswer < _questions.length
          ? Quiz(
              answerCallBack: _answerQuestion,
              questionIndex: questionToAnswer,
              questions: _questions,
            )
          : Result(_resetQuiz, _totalscore),
    ));
  }
}
