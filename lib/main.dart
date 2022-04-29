// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _questions = [
      "What's your favourite color ?",
      "What's your favourite animal ?"
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Rakesh Swain'),
        ),
        body: Column(children: const [
          Text("The question!"),
          RaisedButton(child: Text("Answer 1"), onPressed: null),
          RaisedButton(child: Text("Answer 1"), onPressed: null),
          RaisedButton(child: Text("Answer 1"), onPressed: null),
        ]),
      ),
    );
  }
}
