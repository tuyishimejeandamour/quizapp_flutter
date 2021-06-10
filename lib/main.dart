import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print("hello there here is your answer");
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
          Text("Number of questions"),
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
