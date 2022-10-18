import 'package:flutter/material.dart';
import '../questions.dart';
import '../responseButton.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionsSelect;
  final void Function(int) answer;
  final bool selectQuestion;

  Quiz({
    required this.questions,
    required this.questionsSelect,
    required this.answer,
    required this.selectQuestion,
  });

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> response = selectQuestion
        ? questions[questionsSelect].cast()["response"]
            as List<Map<String, Object>>
        : [];

    return Column(
      children: [
        Questions(questions[questionsSelect]["text"].toString()),
        ...response.map((resp) {
          return ResponseButton(
            resp["text"] as String,
            () => answer(int.parse(resp["note"].toString())),
          );
        }).toList(),
      ],
    );
  }
}
