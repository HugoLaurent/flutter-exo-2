import 'package:flutter/material.dart';

class FinalRender extends StatelessWidget {
  const FinalRender({super.key});

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 200,
          height: 200,
        ),
        const SizedBox(height: 30),
        const Text(
          "Learn Flutter the fun way ! ",
          style: TextStyle(color: Colors.white),
        ),
        const SizedBox(height: 30),
        const ElevatedButton(
            onPressed: null,
            child: Text(
              "Start Quiz",
              style: TextStyle(color: Colors.white),
            ))
      ],
    );
  }
}
