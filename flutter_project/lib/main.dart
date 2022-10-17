import 'package:flutter/material.dart';
import 'package:flutter_project/responseButton.dart';
import './questions.dart';

main() => runApp(PerguntasApp());

class _PerguntasAppState extends State<PerguntasApp> {
  var _perguntaSelecionada = 0;
  List<Widget> response = [];

  void _response() {
    setState(() {
      _perguntaSelecionada++;
    });
  }

  final List<Map<String, Object>> perguntas = [
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

  @override
  Widget build(BuildContext context) {
    for (String textResponse
        in perguntas[_perguntaSelecionada].cast()["response"]) {
      response.add(ResponseButton(textResponse, _response));
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Questions"),
        ),
        body: Column(
          children: [
            Questions(
              //perguntas é um MAP
              perguntas[_perguntaSelecionada]["text"].toString(),
            ),
            ...response,
          ],
        ),
      ),
    );
  }
}

class PerguntasApp extends StatefulWidget {
  @override
  _PerguntasAppState createState() {
    return _PerguntasAppState();
  }
}
