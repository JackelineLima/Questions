import 'package:flutter/material.dart';
import 'package:flutter_project/responseButton.dart';
import './questions.dart';

main() => runApp(const QuestionsApp());

class _QuestionsStateApp extends State<QuestionsApp> {
  var _questionsSelect = 0;

  void _response() {
    setState(() {
      _questionsSelect++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> questions = [
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

    List<String> response = questions[_questionsSelect].cast()["response"];
    List<Widget> widgets =
        response.map((t) => ResponseButton(t, _response)).toList();

    // for (String textResponse
    //     in questions[_questionsSelect].cast()["response"]) {
    //   widgets.add(ResponseButton(textResponse, _response));
    // }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Questions"),
        ),
        body: Column(
          children: [
            Questions(
              //questions é um MAP
              questions[_questionsSelect]["text"].toString(),
            ),
            ...widgets,
          ],
        ),
      ),
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
