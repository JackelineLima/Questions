import 'package:flutter/material.dart';

class ResponseButton extends StatelessWidget {
  final String text;
  final void Function() onTap;

  ResponseButton(this.text, this.onTap);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onTap,
        child: Text(text),
        style: ElevatedButton.styleFrom(
            textStyle: TextStyle(
                fontSize: 18, color: Colors.black, fontStyle: FontStyle.italic),
            side: const BorderSide(color: Colors.black, width: 1),
            shape: const BeveledRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(5)))),
      ),
    );
  }
}
