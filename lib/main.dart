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
    final questions = [
      {
        'text': 'Qual é a sua cor favorita?',
        'answers': ['Preto', 'Vermelho', 'Verde', 'Branco']
      },
      {
        'text': 'Qual é o seu animal favorito?',
        'answers': ['Coelho', 'Cobra', 'Elefante', 'Leão']
      },
      {
        'text': 'Qual é o seu instrutor favorito?',
        'answers': ['Carlos', 'João', 'Leo', 'Pedro']
      },
    ];

    List<String> answers = questions[_questionSelected].cast()['answers'];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Perguntas')),
        body: Column(
          children: [
            Question(questions[_questionSelected]['text'].toString()),
            ...answers.map((text) => Answer(text, _answer)).toList(),
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
