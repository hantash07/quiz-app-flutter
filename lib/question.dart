import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionTitle;

  Question(this.questionTitle);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(16),
      child: Text(
        questionTitle,
        style: TextStyle(
            fontSize: 24
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

}
