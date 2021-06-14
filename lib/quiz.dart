import 'package:first_app/question.dart';
import 'package:flutter/material.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  final Function answerCallBack;
  final List<Map<String, Object>> questions;
  final int questionIndex;

  Quiz(
      {required this.questions,
      required this.answerCallBack,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          (questions[questionIndex]['question'] as String),
        ),
        ...(questions[questionIndex]['answer'] as List<Map<String, Object>>)
            .map((e) {
          return Answer(
              () => answerCallBack((e["score"] as int)), (e["text"] as String));
        }).toList(),
      ],
    );
  }
}
