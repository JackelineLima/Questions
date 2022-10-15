import 'package:flutter/material.dart';
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
          title: Questions("Questions"),
        ),
        body: Column(
          children: [
            Questions(perguntas[_perguntaSelecionada]),
            ElevatedButton(
                onPressed: _response, child: Questions("Resposta 1")),
            ElevatedButton(
                onPressed: _response, child: Questions("Resposta 2")),
            ElevatedButton(onPressed: _response, child: Questions("Resposta 3"))
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
