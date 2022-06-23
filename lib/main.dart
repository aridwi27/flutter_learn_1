import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';
// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Map<Object, Object>> questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answer': ['red', 'green', 'blue']
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answer': ['cat', 'dog', 'cow']
      },
      {
        'questionText': 'What\'s your favorite foods?',
        'answer': ['rendang', 'mie', 'nasi']
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'],
            ),
            ...(questions[_questionIndex]['answer'] as List<String>)
                .map((data) {
              return Answer(_answerQuestion, data);
            }).toList()
          ],
        ),
      ),
    );
  }
}
