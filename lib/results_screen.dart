import 'package:flutter/material.dart';

import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/questions_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(this.chosenAnswers, this.resetQuiz, {super.key});

  final List<String> chosenAnswers;
  final void Function() resetQuiz;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add(
        {
          "question_index": i,
          "question": questions[i].text,
          "correct_answer": questions[i].answers[0],
          "user_answer": chosenAnswers[i]
        },
      );
    }

    return summary;
  }

  @override
  Widget build(context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((element) {
      return element["correct_answer"] == element["user_answer"];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You answered $numCorrectQuestions out of $numTotalQuestions questions correctly"
                  .toUpperCase(),
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            QuestionsSummary(summaryData),
            const SizedBox(
              height: 30,
            ),
            TextButton.icon(
              onPressed: resetQuiz,
              style: TextButton.styleFrom(
                  foregroundColor: const Color.fromARGB(138, 255, 255, 255)),
              icon: const Icon(Icons.replay_outlined),
              label: const Text("Restart Quiz"),
            )
          ],
        ),
      ),
    );
  }
}
