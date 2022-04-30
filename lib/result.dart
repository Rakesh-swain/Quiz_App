import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = "You are  awesome and innocent";
    } else if (resultScore <= 12) {
      resultText = "Pretty likeable !";
    } else if (resultScore <= 16) {
      resultText = "You are so strange !";
    } else {
      resultText = "You are so bad !";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          RaisedButton(
            child: const Text("Restart Quiz !"),
            textColor: const Color.fromARGB(255, 160, 4, 56),
            padding: const EdgeInsets.all(20),
            color: const Color.fromARGB(255, 3, 218, 164),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
