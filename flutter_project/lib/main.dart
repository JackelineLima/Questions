import 'package:flutter/material.dart';

main() => runApp(PerguntasApp());

class PerguntasAppState extends State<PerguntasApp> {
  var perguntaSelecionada = 0;

  void response() {
    setState(() {
      perguntaSelecionada++;
    });
    print(perguntaSelecionada);
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
            Text(perguntas[perguntaSelecionada]),
            ElevatedButton(onPressed: response, child: Text("Resposta 1")),
            ElevatedButton(onPressed: response, child: Text("Resposta 2")),
            ElevatedButton(onPressed: response, child: Text("Resposta 3"))
          ],
        ),
      ),
    );
  }
}

class PerguntasApp extends StatefulWidget {
  @override
  PerguntasAppState createState() {
    return PerguntasAppState();
  }
}
