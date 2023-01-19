import 'package:flutter/material.dart';
import './question.dart';

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
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What is your favorite color?',
      'What is your favorite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First Project'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex],
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: Text('Answer 1'),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: Text('Answer 2'),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: Text('Answer 3'),
            ),
          ],
        ),
      ),
    );
  }
}
