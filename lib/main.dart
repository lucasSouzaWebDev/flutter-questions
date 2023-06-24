import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(QuestionApp());

class _QuestionAppState extends State<QuestionApp> {
  var _questionSelected = 0;

  void _answer() {
    setState(() {
      _questionSelected++;
    });
    print('Pergunta respondida!');
  }

  @override
  Widget build(BuildContext context) {
    final List<String> questions = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Perguntas')),
        body: Column(
          children: [
            Question(questions[_questionSelected]),
            ElevatedButton(
              child: Text('Resposta 1'),
              onPressed: _answer,
            ),
            ElevatedButton(
              child: Text('Resposta 2'),
              onPressed: _answer,
            ),
            ElevatedButton(
              child: Text('Resposta 3'),
              onPressed: _answer,
            ),
          ],
        ),
        backgroundColor: Color(0xFFFFFFFF),
      ),
    );
  }
}

class QuestionApp extends StatefulWidget {

  @override
  _QuestionAppState createState() {
    return _QuestionAppState();
  }
}
