import 'package:adv_basics/questions_screen.dart';
import 'package:adv_basics/start_screen.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start_screen';

  void switchScreens() {
    setState(() {
      activeScreen = 'question_screen';
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.deepPurple, Color.fromARGB(255, 105, 3, 164)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
          ),
          child: activeScreen == 'start_screen'
              ? StartScreen(switchScreens)
              : const QuestionScreen(),
        ),
      ),
    );
  }
}
