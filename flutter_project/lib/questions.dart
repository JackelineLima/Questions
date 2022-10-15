import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String text;

  Questions(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}
