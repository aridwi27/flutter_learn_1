import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('this is the answer');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('hallo'),
            ),
            body: Column(
              children: [
                Text('hallow'),
                RaisedButton(
                  child: Text('anser 1'),
                  onPressed: answerQuestion,
                ),
                RaisedButton(
                  child: Text('anser 2'),
                  onPressed: () => print('button 2'),
                ),
                RaisedButton(
                  child: Text('anser 3'),
                  onPressed: () {
                    print('button 3');
                    print('answer 3');
                  },
                ),
              ],
            )));
  }
}
