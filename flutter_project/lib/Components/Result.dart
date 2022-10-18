import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final void Function() restart;

  Result(this.score, this.restart);

  String get phraseResult {
    if (score <= 25) {
      return "Parabéns!!";
    } else if (score >= 35) {
      return "Você é bom!!!";
    } else {
      return "Nivel Jedi";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            phraseResult,
            style: TextStyle(fontSize: 28),
          ),
        ),
        TextButton(
          onPressed: restart,
          child: const Text(
            "Reiniciar",
          ),
          style: TextButton.styleFrom(
            textStyle: TextStyle(
              fontSize: 20,
              color: Colors.blue,
            ),
          ),
        ),
      ],
    );
  }
}
