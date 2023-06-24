import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(QuestionApp());

class _QuestionAppState extends State<QuestionApp> {
  var _questionSelected = 0;
  final _questions = const [
    {
      'text': 'Qual é a sua cor favorita?',
      'answers': [
        {'text': 'Preto', 'grade': 10},
        {'text': 'Vermelho', 'grade': 5},
        {'text': 'Verde', 'grade': 3},
        {'text': 'Branco', 'grade': 1},
      ]
    },
    {
      'text': 'Qual é o seu animal favorito?',
      'answers': [
        {'text': 'Coelho', 'grade': 10},
        {'text': 'Cobra', 'grade': 5},
        {'text': 'Elefante', 'grade': 3},
        {'text': 'Leão', 'grade': 1},
      ]
    },
    {
      'text': 'Qual é o seu instrutor favorito?',
      'answers': [
        {'text': 'Carlos', 'grade': 10},
        {'text': 'João', 'grade': 5},
        {'text': 'Leo', 'grade': 3},
        {'text': 'Pedro', 'grade': 1},
      ]
    },
  ];

  void _answer() {
    if (hasSelectedQuestion) {
      setState(() {
        _questionSelected++;
      });
    }
    print('Pergunta respondida!');
  }

  bool get hasSelectedQuestion {
    return _questionSelected < _questions.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Perguntas')),
        body: hasSelectedQuestion
            ? Quiz(
                questions: _questions,
                questionSelected: _questionSelected,
                answer: _answer,
              )
            : Result(),
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
