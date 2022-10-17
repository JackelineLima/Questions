import 'package:flutter/material.dart';
import 'package:flutter_project/Components/Quiz.dart';
import 'package:flutter_project/Components/Result.dart';

main() => runApp(const QuestionsApp());

class _QuestionsStateApp extends State<QuestionsApp> {
  var _questionsSelect = 0;
  final List<Map<String, Object>> _questions = const [
    {
      "text": "Qual é a sua cor favorita?",
      "response": ["Preto", "Vermelho", "Verde", "Branco"]
    },
    {
      "text": "Qual é o seu animal favorito?",
      "response": ["Coelho", "Cobra", "Elefante", "Leão"]
    },
    {
      "text": "Qual a sua linguagem favorita?",
      "response": ["Swift", "Android", "Dart", "React Native"]
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
