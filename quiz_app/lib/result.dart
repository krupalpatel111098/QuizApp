import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  Result(this.resultScore, this.resetHandler);

  final int resultScore;
  final VoidCallback resetHandler;

  String get resultPhase {
    String resultText;
    if (resultScore <= 7) {
      resultText = "You are awasome";
    } else if (resultScore <= 11) {
      resultText = "Pretty Likeable! ";
    } else if (resultScore <= 16) {
      resultText = "You'r strenge..?";
    } else {
      resultText = "You are so bad";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return body;
  }
  Widget get body=>Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          resultPhaseView,
          TextButton(
            onPressed: resetHandler,
            child: Text(
              "Restart Quiz !!",
              style: TextStyle(color: Colors.red),
            ),
          )
        ],
      ),
    );

  
Widget get resultPhaseView=>Text(
            resultPhase,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.right,
          );
}
