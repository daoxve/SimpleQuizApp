import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 12) {
      resultText = 'OMG! Me too!';
    } else if (resultScore <= 16) {
      resultText = 'You\'re pretty likeable if you ask me';
    } else if (resultScore <= 20) {
      resultText = 'Hmm... you\'re kinda weird';
    } else {
      resultText = 'It\'s official, you\'re a weirdo!';
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
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
            onPressed: resetHandler,
            child: Text('Restart Quiz!'),
          )
        ],
      ),
    );
  }
}
