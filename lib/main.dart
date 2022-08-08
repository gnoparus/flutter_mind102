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

  static const _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        'Black',
        'Greeen',
        'Red',
        'White',
        'Yellow',
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        'Dog',
        'Cat',
        'Bird',
        'Frog',
        'Beaver',
      ],
    },
    {
      'questionText': 'What\'s your favorite day?',
      'answers': [
        'Monday',
        'Sunday',
        'Friday',
        'Holiday',
        'Birthday',
        'New Year\'s Eve'
      ],
    },
  ];

  void _answerQuestion() {
    setState(() {
      print("Answer chosen!");
      _questionIndex += 1;
      print(_questionIndex);
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
            ? const Result()
            : Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
              ),
      ),
    );
  }
}
