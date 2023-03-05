import 'package:flutter/material.dart';
import 'package:quizz_app/home_page.dart';
import 'quiz_page.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  const Result(this.resultScore, this.resetHandler, {super.key});

  String get resultPhrase {
    String resultText;
    if (resultScore >= 130) {
      resultText = 'a diligent person';
    } else if (resultScore >= 90) {
      resultText = 'an okay person';
    } else if (resultScore >= 70) {
      resultText = 'quite lazy innit?';
    } else {
      resultText = 'a lazy menace!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top: 40, bottom: 40),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
                top: 180,
                bottom: 20,
              ),
              child: Text(
                'Your Score is: $resultScore',
                style: const TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w100,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
                top: 10,
                bottom: 10,
              ),
              child: Text(
                'You are $resultPhrase',
                style: const TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.black,
                  fontSize: 30,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 70,
                right: 70,
                top: 20,
                bottom: 10,
              ),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(
                    color: Colors.black,
                    width: 1.5,
                  ),
                  backgroundColor: const Color.fromARGB(255, 48, 131, 255),
                  minimumSize: const Size(300, 55),
                  textStyle: const TextStyle(fontSize: 20, color: Colors.black),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MainQuiz()));
                },
                child: const Text(
                  'Restart Quiz',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Comfortaa',
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 70,
                right: 70,
                top: 20,
                bottom: 10,
              ),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(
                    color: Colors.black,
                    width: 1.5,
                  ),
                  backgroundColor: const Color.fromARGB(255, 48, 131, 255),
                  minimumSize: const Size(300, 55),
                  textStyle: const TextStyle(fontSize: 20, color: Colors.black),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));
                },
                child: const Text(
                  'Return to Home',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Comfortaa',
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
