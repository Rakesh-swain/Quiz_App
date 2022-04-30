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
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var _questions = [
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Rakesh Swain'),
        ),
        body: Column(children: [
          Question(_questions[_questionIndex]),
          Answer(_answerQuestion),
          Answer(_answerQuestion),
          Answer(_answerQuestion),
        ]),
      ),
    );
  }
}
