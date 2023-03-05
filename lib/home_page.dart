import 'package:flutter/material.dart';
import 'quiz_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('pics/background.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 10,
                      right: 10,
                      top: 180,
                      bottom: 20,
                    ),
                    child: Text(
                      'Welcome To Personality Test Quiz!',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.w100,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 10,
                      right: 10,
                      top: 10,
                      bottom: 10,
                    ),
                    child: Text(
                      'Press The Button Below to Start the Quiz!',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        fontSize: 20,
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
                          backgroundColor:
                              const Color.fromARGB(255, 48, 131, 255),
                          minimumSize: const Size(300, 55),
                          textStyle: const TextStyle(
                              fontSize: 20, color: Colors.black),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MainQuiz()));
                        },
                        child: const Text(
                          'Start the Quiz!',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Comfortaa',
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 40,
                      left: 10,
                      right: 10,
                    ),
                    child: Text(
                      'Created By : Robin - 2540128474',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
