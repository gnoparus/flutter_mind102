import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  const Quiz({
    required this.questions,
    required this.questionIndex,
    required this.answerQuestion,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questionText: questions[questionIndex]["questionText"] as String,
        ),
        ...(questions[questionIndex]["answers"] as List<String>).map((item) {
          return Answer(
            answerText: item,
            selectHandler: () => answerQuestion(),
          );
        }).toList(),
      ],
    );
  }
}
