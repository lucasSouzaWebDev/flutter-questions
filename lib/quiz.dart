import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionSelected;
  final void Function(int) answer;

  const Quiz({
    required this.questions,
    required this.questionSelected,
    required this.answer,
    super.key,
  });

  bool get hasSelectedQuestion {
    return questionSelected < questions.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> answers = hasSelectedQuestion
        ? questions[questionSelected].cast()['answers']
        : [];

    return Column(
      children: [
        Question(questions[questionSelected]['text'].toString()),
        ...answers
            .map((ans) => Answer(ans['text'].toString(),
                () => answer(int.parse(ans['grade'].toString()))))
            .toList(),
      ],
    );
  }
}
