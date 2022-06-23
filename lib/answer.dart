import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(answerText),
        color: Colors.blue,
        textColor: Colors.white,
        onPressed: selectHandler,
      ),
    );
  }
}

// class Answer extends StatefulWidget {
//   @override
//   State<Answer> createState() => _AnswerState();
// }

// class _AnswerState extends State<Answer> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       color: Colors.blue,
//       child: RaisedButton(
//         child: Text('Answer 1'),
//         onPressed: null,
//       ),
//     );
//   }
// }
