import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

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
    const questions = [
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

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("This is AppBar Title"),
        ),
        body: _questionIndex == questions.length
            ? Center(
                child: Text('You did it!'),
              )
            : Column(
                children: [
                  Question(
                    questionText:
                        questions[_questionIndex]["questionText"] as String,
                  ),
                  ...(questions[_questionIndex]["answers"] as List<String>)
                      .map((item) {
                    return Answer(
                      answerText: item,
                      selectHandler: () => _answerQuestion(),
                    );
                  }).toList(),
                ],
              ),
      ),
    );
  }
}
