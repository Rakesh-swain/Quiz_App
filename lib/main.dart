// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favourite color ?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': "What's your favourite Animal ?",
      'answers': [
        {'text': 'Tiger', 'score': 3},
        {'text': 'Lion', 'score': 11},
        {'text': 'Zebra', 'score': 5},
        {'text': 'Rabbit', 'score': 9},
      ],
    },
    {
      'questionText': 'What\'s your favourite Instructor ?',
      'answers': [
        {'text': 'Rakesh', 'Score': 10},
        {'text': 'Chinu', 'Score': 5},
        {'text': 'Rahul', 'Score': 3},
        {'text': 'Raj', 'Score': 6},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int? score) {
    _totalScore += 1;
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print("We hava more questions!");
    } else {
      print("no more questions!");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Rakesh Swain'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
