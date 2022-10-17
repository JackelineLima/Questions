import 'package:flutter/material.dart';
import '../questions.dart';
import '../responseButton.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionsSelect;
  final void Function() answer;
  final bool selectQuestion;

  Quiz({
    required this.questions,
    required this.questionsSelect,
    required this.answer,
    required this.selectQuestion,
  });

  @override
  Widget build(BuildContext context) {
    List<String> response =
        selectQuestion ? questions[questionsSelect].cast()["response"] : [];

    return Column(
      children: [
        Questions(questions[questionsSelect]["text"].toString()),
        ...response.map((t) => ResponseButton(t, answer)).toList(),
      ],
    );
  }
}
