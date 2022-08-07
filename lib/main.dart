import 'package:flutter/material.dart';

import './question.dart';

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
    var questions = [
      "What's your favorite color?",
      "What's your favorite animal?",
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("This is AppBar Title"),
        ),
        body: Column(
          children: [
            Question(questionText: questions[_questionIndex]),
            ElevatedButton(onPressed: (() {}), child: const Text("Answer 1")),
            ElevatedButton(onPressed: (() {}), child: const Text("Answer 2")),
            ElevatedButton(
                onPressed: (() => _answerQuestion()),
                child: const Text("Answer 3"))
          ],
        ),
      ),
    );
  }
}
