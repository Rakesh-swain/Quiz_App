// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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
      "questionText": "What's your favourite color ?",
      "answers": ['Black', 'red', 'green', 'white']
    },
    {
      "questionText": "What's your favourite animal ?",
      "answers": ['Tiger', 'Lion', 'Zebra', 'Rabbit']
    },
    {
      "questionText": "What's your favourite instructor ?",
      "answers": ['Rakesh', 'Chinu', 'Rahul', 'Raj']
    },
  ];
  var _questionIndex = 0;
  void _answerQuestion() {
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
            ? Column(children: [
                Question(_questions[_questionIndex]['questionText'] as String),
                ...(_questions[_questionIndex]['answers'] as List<String>)
                    .map((answer) {
                  return Answer(_answerQuestion, answer);
                }).toList()
              ])
            : Center(
                child: Text("You did it !"),
              ),
      ),
    );
  }
}
