import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int grade;
  final void Function() onResetQuiz;

  const Result(this.grade, this.onResetQuiz, {super.key});

  String get resultMessage {
    if (grade < 8) {
      return 'Parabéns!';
    } else if (grade < 12) {
      return 'Você é bom!';
    } else if (grade < 16) {
      return 'Impressionante!';
    } else {
      return 'Brabo!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(resultMessage, style: TextStyle(fontSize: 28)),
        ),
        ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue),
              foregroundColor: MaterialStateProperty.all(Colors.white)),
          onPressed: onResetQuiz,
          child: Text(
            'Reiniciar',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ],
    );
  }
}
