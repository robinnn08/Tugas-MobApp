import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  const Question(this.questionText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
        right: 10,
        top: 50,
        bottom: 20,
      ),
      child: Text(
        questionText,
        style: const TextStyle(
          fontFamily: 'Comfortaa',
          color: Colors.black,
          fontSize: 25,
          fontWeight: FontWeight.w700,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
