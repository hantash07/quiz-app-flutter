import 'dart:ui';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback buttonCallBack;
  final String answerText;

  Answer(this.buttonCallBack, this.answerText);  //This constructor parameter receives CallBack of the function

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(16, 8, 16, 0),
      child: ElevatedButton(
          child: Text(
            answerText,
            style: TextStyle(color: Colors.white),
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.lightBlue),
            foregroundColor: MaterialStateProperty.all(Colors.white)
          ),
          onPressed: buttonCallBack
      ),
    );
  }
}
