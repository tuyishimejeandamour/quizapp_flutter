import 'package:first_app/question.dart';
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

  var questions = [
    'are you single or married',
    'do you have children or you don\'t ',
  ];
  void answerQuestion() {
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
          Question(questions.elementAt(questionToAnswer)),
          ElevatedButton(
            onPressed: answerQuestion,
            child: Text("is this your month of birth"),
          ),
          ElevatedButton(
            onPressed: answerQuestion,
            child: Text("is this your month of birth"),
          ),
          ElevatedButton(
            onPressed: answerQuestion,
            child: Text("is this your month of birth"),
          ),
          ElevatedButton(
            onPressed: answerQuestion,
            child: Text("is this your month of birth"),
          ),
          ElevatedButton(
            onPressed: answerQuestion,
            child: Text("is this your month of birth"),
          ),
          ElevatedButton(
            onPressed: answerQuestion,
            child: Text("is this your month of birth"),
          ),
        ],
      ),
    ));
  }
}
