// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var questionIndex = 0;
  void answerQuestion() {
    questionIndex += 1;
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var _questions = [
      "What's your favourite color ?",
      "What's your favourite animal ?"
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Rakesh Swain'),
        ),
        body: Column(children: [
          Text(_questions[questionIndex]),
          RaisedButton(
              child: const Text("Answer 1"), onPressed: answerQuestion),
          RaisedButton(
              child: const Text("Answer 2"),
              onPressed: () => "Answer 2 choosen"),
          RaisedButton(
              child: const Text("Answer 3"),
              onPressed: () {
                print("Answer 3 choosen");
              }),
        ]),
      ),
    );
  }
}
