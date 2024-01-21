import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                width: 20,
                decoration: BoxDecoration(
                  color: data["user_answer"] == data["correct_answer"]
                      ? const Color.fromARGB(255, 39, 120, 63)
                      : const Color.fromARGB(255, 244, 67, 54),
                  borderRadius: const BorderRadius.all(Radius.circular(15.0)),
                ),
                child: Center(
                  child: Text(
                    ((data["question_index"] as int) + 1).toString(),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data["question"] as String,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      data['user_answer'] as String,
                      style: TextStyle(
                        color: data["user_answer"] == data["correct_answer"]
                            ? const Color.fromARGB(255, 39, 120, 63)
                            : const Color.fromARGB(255, 244, 67, 54),
                      ),
                    ),
                    Text(
                      data['correct_answer'] as String,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 39, 120, 63)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ]);
          }).toList(),
        ),
      ),
    );
  }
}
