import 'package:flutter/material.dart';

void main() => runApp(QuestionApp());

class QuestionAppState extends State<QuestionApp> {
  var questionSelected = 0;

  void answer() {
    setState(() {
      questionSelected++;
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
            Text(questions[questionSelected]),
            ElevatedButton(
              child: Text('Resposta 1'),
              onPressed: answer,
            ),
            ElevatedButton(
              child: Text('Resposta 2'),
              onPressed: answer,
            ),
            ElevatedButton(
              child: Text('Resposta 3'),
              onPressed: answer,
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
  QuestionAppState createState() {
    return QuestionAppState();
  }
}
