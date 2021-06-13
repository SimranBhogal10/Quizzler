import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var questions = [
    {
      'questionText': 'What is your Favourite color?',
      'answers': ['Blue', 'White', 'Purple', 'Green']
    },
    {
      'questionText': 'What is your favourite animal?',
      'answers': ['Giraffe', 'Rabbit', 'Elephant', 'Lion']
    },
    {
      'questionText': 'What is your favourite flower?',
      'answers': ['Rose', 'Tulip', 'Marigold', 'Hibiscus']
    },
  ];
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex < questions.length) {
      print('We have more Questions!');
    } else {
      print('No more questions');
    }
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext cxt) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App.'),
        ),
        body: _questionIndex < questions.length
            ? Column(
                children: [
                  Question(questions[_questionIndex]['questionText']),
                  ...(questions[_questionIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(_answerQuestion, answer);
                  }).toList()
                ],
              )
            : Center(
                child: Text('You did it!!'),
              ),
      ),
    );
  }
}
