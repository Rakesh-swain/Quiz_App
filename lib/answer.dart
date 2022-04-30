// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      margin: const EdgeInsets.only(bottom: 10),
      child: RaisedButton(
          color: const Color.fromARGB(255, 179, 2, 233),
          padding: EdgeInsets.all(15),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
          textColor: Colors.white,
          child: Text(answerText),
          onPressed: selectHandler),
    );
  }
}
