import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  const Answer({
    Key? key,
    required this.selectHandler,
    required this.answerText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(8),
      child: ElevatedButton(
        onPressed: (() => selectHandler()),
        style: ElevatedButton.styleFrom(
          primary: Colors.yellow,
          textStyle: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        child: Text(answerText),
      ),
    );
  }
}
