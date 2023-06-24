import 'package:flutter/material.dart';

class Question extends StatelessWidget {

  final String text;

  Question(this.text, {super.key});


  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}