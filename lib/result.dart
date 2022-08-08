import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  const Result(this.totalScore, {Key? key}) : super(key: key);

  String get resultPhrase {
    var resultText = "You are normal.";

    if (totalScore < 200) {
      resultText = "Pretty likable.";
    } else if (totalScore < 300) {
      resultText = "You are monster.";
    } else if (totalScore < 400) {
      resultText = "You are so bad.";
    } else if (totalScore < 500) {
      resultText = "You are angel.";
    } else {
      resultText = "You are hero.";
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(resultPhrase),
    );
  }
}
