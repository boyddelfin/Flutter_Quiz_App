import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalscore = 0;

  final _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Red', 'score': 1},
        {'text': 'Green', 'score': 2},
        {'text': 'Blue', 'score': 3},
        {'text': 'Transparent', 'score': 4},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Dog', 'score': 1},
        {'text': 'Cat', 'score': 2},
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Pig', 'score': 4},
      ],
    },
    {
      'questionText': 'What\'s your favorite computer brand?',
      'answers': [
        {'text': 'Asus', 'score': 1},
        {'text': 'Dell', 'score': 2},
        {'text': 'HP', 'score': 3},
        {'text': 'Apple', 'score': 4},
      ],
    },
  ];

  void _answerQuestion(int score) {
    _totalscore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalscore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Boyd Delfin | Quiz App'),
          backgroundColor: Color.fromARGB(255, 39, 39, 39),
        ),
        body: Container(
          width: double.infinity,
          padding: EdgeInsets.all(15),
          child: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Result(_totalscore, _resetQuiz),
        ),
      ),
    );
  }
}
