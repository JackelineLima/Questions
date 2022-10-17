import 'package:flutter/material.dart';
import 'package:flutter_project/responseButton.dart';
import './questions.dart';

main() => runApp(PerguntasApp());

class _PerguntasAppState extends State<PerguntasApp> {
  var _perguntaSelecionada = 0;

  void _response() {
    setState(() {
      _perguntaSelecionada++;
    });
    print(_perguntaSelecionada);
  }

  final perguntas = [
    "Qual é a sua cor favorita?",
    "Qual é a sua comida favorita?"
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Questions"),
        ),
        body: Column(
          children: [
            Questions(perguntas[_perguntaSelecionada]),
            ResponseButton("Resposta 1", _response),
            ResponseButton("Resposta 2", _response),
            ResponseButton('Resposta 3', _response)
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
