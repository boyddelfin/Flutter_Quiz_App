import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 4) {
      resultText = "Good";
    } else if (resultScore <= 8) {
      resultText = "Very Good";
    } else if (resultScore <= 12) {
      resultText = "Amazing";
    } else if (resultScore <= 16) {
      resultText = "Great";
    } else {
      resultText = "Awesome";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(resultPhrase),
          ElevatedButton(
            onPressed: resetHandler,
            child: Text('Reset Quiz'),
          ),
        ],
      ),
    );
  }
}
