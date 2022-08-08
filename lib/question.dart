import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  const Question({
    Key? key,
    this.questionText = "",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.all(8.0),
        child: Text(
          questionText,
          style: const TextStyle(
            backgroundColor: Colors.red,
            color: Colors.greenAccent,
            fontSize: 32,
          ),
          textAlign: TextAlign.center,
        ));
  }
}
