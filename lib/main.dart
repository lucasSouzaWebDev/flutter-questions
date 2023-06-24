import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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
            Answer('Resposta 1'),
            Answer('Resposta 2'),
            Answer('Resposta 3'),
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
