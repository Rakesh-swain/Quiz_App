// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

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
          Text(_questions[_questionIndex]),
          RaisedButton(
              child: const Text("Answer 1"), onPressed: _answerQuestion),
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
