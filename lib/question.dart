import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  const Question({
    Key? key,
    this.questionText = "",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}