import 'dart:html';

import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  static const _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 1},
        {'text': 'Greeen', 'score': 9},
        {'text': 'Red', 'score': 8},
        {'text': 'White', 'score': 7},
        {'text': 'Yellow', 'score': 6},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Dog', 'score': 10},
        {'text': 'Cat', 'score': 90},
        {'text': 'Bird', 'score': 80},
        {'text': 'Frog', 'score': 70},
        {'text': 'Beaver', 'score': 60},
      ],
    },
    {
      'questionText': 'What\'s your favorite day?',
      'answers': [
        {'text': 'Monday', 'score': 100},
        {'text': 'Sunday', 'score': 900},
        {'text': 'Friday', 'score': 800},
        {'text': 'Holiday', 'score': 700},
        {'text': 'Birthday', 'score': 600},
        {'text': 'New Year\'s Eve', 'score': 500},
      ],
    },
  ];

  void _answerQuestion(int score) {
    setState(() {
      print("Answer chosen!");
      _questionIndex += 1;
      _totalScore += score;
      print(_questionIndex);
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("This is AppBar Title"),
        ),
        body: _questionIndex == _questions.length
            ? Result(_totalScore, _resetQuiz)
            : Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
              ),
      ),
    );
  }
}
