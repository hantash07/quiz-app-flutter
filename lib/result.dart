import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetQuizBtnCallBack;

  Result({required this.totalScore, required this.resetQuizBtnCallBack});

  String get beautifyResult {
    var result = "No Result!";
    if (totalScore <= 8) {
      result = "You are awesome and innocent!";
    } else if (totalScore <= 12) {
      result = "Pretty likeable!";
    } else if (totalScore <= 16) {
      result = "You are strange!";
    } else {
      result = "You are bad!";
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(16),
      child: Column(
        children: [
          Text(
            beautifyResult,
            style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
          ),
          TextButton(
            onPressed: resetQuizBtnCallBack,
            child: Text("Reset Quiz!"),
            style: TextButton.styleFrom(primary: Colors.lightBlue),
          )
        ],
      ),
    );
  }
}
