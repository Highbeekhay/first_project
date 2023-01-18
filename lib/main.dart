import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
            Text('The question!'),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: null,
              child: Text('Answer 1'),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: null,
              child: Text('Answer 2'),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: null,
              child: Text('Answer 3'),
            ),
          ],
        ),
      ),
    );
  }
}
