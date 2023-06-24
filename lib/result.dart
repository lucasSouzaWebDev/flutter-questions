import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final int grade;

  const Result(this.grade, {super.key});

  String get resultMessage {
    if(grade < 8){
      return 'Parabéns!';
    } else if(grade < 12){
      return 'Você é bom!';
    } else if(grade < 16){
      return 'Impressionante!';
    } else {
      return 'Brabo!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(resultMessage, style: TextStyle(fontSize: 28)),
    );
  }
}
