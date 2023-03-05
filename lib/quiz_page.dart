import 'package:flutter/material.dart';
import 'test_widget.dart';
import 'result.dart';

class MainQuiz extends StatefulWidget {
  const MainQuiz({super.key});

  @override
  State<MainQuiz> createState() => _MainQuizState();
}

class _MainQuizState extends State<MainQuiz> {
  final _questionsAnswers = [
    {
      'question':
          '1. You tend to procrastinate on tasks that must be done in time',
      'answers': [
        {'text': 'Strongly Agree', 'score': 3},
        {'text': 'Agree', 'score': 6},
        {'text': 'Neutral', 'score': 9},
        {'text': 'Disagree', 'score': 12},
        {'text': 'Strongly Disagree', 'score': 15},
      ],
    },
    {
      'question': '2. You always do your tasks in time',
      'answers': [
        {'text': 'Strongly Agree', 'score': 15},
        {'text': 'Agree', 'score': 12},
        {'text': 'Neutral', 'score': 9},
        {'text': 'Disagree', 'score': 6},
        {'text': 'Strongly Disagree', 'score': 3},
      ],
    },
    {
      'question': '3. You always start the iniciative to do something',
      'answers': [
        {'text': 'Strongly Agree', 'score': 15},
        {'text': 'Agree', 'score': 12},
        {'text': 'Neutral', 'score': 9},
        {'text': 'Disagree', 'score': 6},
        {'text': 'Strongly Disagree', 'score': 3},
      ],
    },
    {
      'question': '4. You set priorities when having multiple tasks',
      'answers': [
        {'text': 'Strongly Agree', 'score': 15},
        {'text': 'Agree', 'score': 12},
        {'text': 'Neutral', 'score': 9},
        {'text': 'Disagree', 'score': 6},
        {'text': 'Strongly Disagree', 'score': 3},
      ],
    },
    {
      'question': '5. You always planned which tasks to do in order',
      'answers': [
        {'text': 'Strongly Agree', 'score': 15},
        {'text': 'Agree', 'score': 12},
        {'text': 'Neutral', 'score': 9},
        {'text': 'Disagree', 'score': 6},
        {'text': 'Strongly Disagree', 'score': 3},
      ],
    },
    {
      'question': '6. You tend to do unrelated things when doing a task',
      'answers': [
        {'text': 'Strongly Agree', 'score': 3},
        {'text': 'Agree', 'score': 6},
        {'text': 'Neutral', 'score': 9},
        {'text': 'Disagree', 'score': 12},
        {'text': 'Strongly Disagree', 'score': 15},
      ],
    },
    {
      'question': '7. You complete your tasks close to the deadline',
      'answers': [
        {'text': 'Strongly Agree', 'score': 3},
        {'text': 'Agree', 'score': 6},
        {'text': 'Neutral', 'score': 9},
        {'text': 'Disagree', 'score': 12},
        {'text': 'Strongly Disagree', 'score': 15},
      ],
    },
    {
      'question': '8. You always do other things before doing your tasks',
      'answers': [
        {'text': 'Strongly Agree', 'score': 3},
        {'text': 'Agree', 'score': 6},
        {'text': 'Neutral', 'score': 9},
        {'text': 'Disagree', 'score': 12},
        {'text': 'Strongly Disagree', 'score': 15},
      ],
    },
    {
      'question':
          '9. You prefer finishing your tasks before spending your free time',
      'answers': [
        {'text': 'Strongly Agree', 'score': 15},
        {'text': 'Agree', 'score': 12},
        {'text': 'Neutral', 'score': 9},
        {'text': 'Disagree', 'score': 6},
        {'text': 'Strongly Disagree', 'score': 3},
      ],
    },
    {
      'question':
          '10. You prioritize finishing your tasks first more than anything else',
      'answers': [
        {'text': 'Strongly Agree', 'score': 15},
        {'text': 'Agree', 'score': 12},
        {'text': 'Neutral', 'score': 9},
        {'text': 'Disagree', 'score': 6},
        {'text': 'Strongly Disagree', 'score': 3},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _chooseAnswers(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
    debugPrint('questionIndex: $_questionIndex ');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Personality Test Quiz',
            style: TextStyle(
              fontFamily: 'Poppins',
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 248, 248, 248),
        ),
        body: SafeArea(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('pics/background.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: _questionIndex < _questionsAnswers.length
                ? TestWidget(
                    questionAnswers: _questionsAnswers,
                    questionIndex: _questionIndex,
                    chooseAnswer: _chooseAnswers,
                  )
                : Result(_totalScore, _resetQuiz),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
