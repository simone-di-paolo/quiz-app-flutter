import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    bool isCorrectAnswer(String userAnswer, String correctAnswer) {
      return userAnswer == correctAnswer;
    }

    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children:
              summaryData.map((data) {
                return Row(
                  children: [
                    Container(
                      width: 25,
                      height: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color:
                            isCorrectAnswer(
                                  data['user_answer'] as String,
                                  data['correct_answer'] as String,
                                )
                                ? Colors.green : Colors.red,
                      ),
                      child: Center(
                        child: Text(
                          ((data['question_index'] as int) + 1).toString(),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(left: 20),
                        child: Column(
                          textBaseline: TextBaseline.alphabetic,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(data['question'] as String, style: TextStyle(color: Colors.white),),
                            const SizedBox(height: 10),
                            Text(data['user_answer'] as String, style: TextStyle(color: Colors.red),),
                            Text(data['correct_answer'] as String, style: TextStyle(color: Colors.green)),
                            const SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              }).toList(),
        ),
      ),
    );
  }
}
