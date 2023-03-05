import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  const Answer(this.selectHandler, this.answerText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(left: 75, right: 75, top: 20),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: const BorderSide(
            color: Colors.black,
            width: 1.5,
          ),
          backgroundColor: const Color.fromARGB(255, 48, 131, 255),
          textStyle: const TextStyle(fontSize: 20, color: Colors.black),
          minimumSize: const Size(300, 40),
        ),
        onPressed: selectHandler,
        child: Text(answerText,
            style: const TextStyle(
              color: Colors.white,
              fontFamily: 'Comfortaa',
              fontSize: 15,
              fontWeight: FontWeight.w700,
            )),
      ),
    );
  }
}
