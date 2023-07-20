import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 220,
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            "Learn Flutter the Fun Way!",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton.icon(
            onPressed: () {
              print("Button Pressed");
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 76, 38, 143)),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text(
              'Start Quiz',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          )
        ],
      ),
    );
  }
}
