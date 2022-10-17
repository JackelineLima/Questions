import 'package:flutter/material.dart';
import 'package:flutter_project/Components/Quiz.dart';
import 'package:flutter_project/Components/Result.dart';

main() => runApp(const QuestionsApp());

class _QuestionsStateApp extends State<QuestionsApp> {
  var _questionsSelect = 0;

  final List<Map<String, Object>> _questions = const [
    {
      "text": "Qual é a sua cor favorita?",
      "response": [
        {"text": "Preto", "note": 10},
        {"text": "Vermelho", "note": 9},
        {"text": "Verde", "note": 8},
        {"text": "Branco", "note": 6},
      ]
    },
    {
      "text": "Qual é o seu animal favorito?",
      "response": [
        {"text": "Coelho", "note": 10},
        {"text": "Cobra", "note": 5},
        {"text": "Elefante", "note": 3},
        {"text": "Leão", "note": 9},
      ]
    },
    {
      "text": "Qual a sua linguagem favorita?",
      "response": [
        {"text": "Swift", "note": 10},
        {"text": "Android", "note": 8},
        {"text": "Dart", "note": 7},
        {"text": "React Native", "note": 5},
      ]
    }
  ];

  void _response() {
    if (selectQuestion) {
      setState(() {
        _questionsSelect++;
      });
    }
  }

  bool get selectQuestion {
    return _questionsSelect < _questions.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Questions"),
          ),
          body: selectQuestion
              ? Quiz(
                  questions: _questions,
                  questionsSelect: _questionsSelect,
                  answer: _response,
                  selectQuestion: selectQuestion,
                )
              : Result("Parabéns!!!!!!")),
    );
  }
}

class QuestionsApp extends StatefulWidget {
  const QuestionsApp({super.key});

  @override
  _QuestionsStateApp createState() {
    return _QuestionsStateApp();
  }
}
