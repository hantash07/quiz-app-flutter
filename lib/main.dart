import 'package:flutter/material.dart';
import 'package:quiz_flutter/result.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

/*
* This underscore (before class name, variable and function) represent that a class or a variable.
* is a private and only access inside this main.dart file.
* */
class _MyAppState extends State<MyApp> {
  static const _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'result': 10},
        {'text': 'Red', 'result': 5},
        {'text': 'Green', 'result': 3},
        {'text': 'White', 'result': 1}
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'result': 1},
        {'text': 'Snake', 'result': 10},
        {'text': 'Elephant', 'result': 5},
        {'text': 'Lion', 'result': 7}
      ]
    },
    {
      'questionText': 'What\'s your favorite super hero?',
      'answers': [
        {'text': 'Ironman', 'result': 1},
        {'text': 'Batman', 'result': 7},
        {'text': 'Superman', 'result': 5},
        {'text': 'Ant Man', 'result': 8},
      ]
    }
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Quiz App"),
        ),
        body: (_questionIndex < _questions.length)
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestionCallBack: _answerQuestion)
            : Result(totalScore: _totalScore, resetQuizBtnCallBack: _resetQuiz)
      ),
    );
  }
}
