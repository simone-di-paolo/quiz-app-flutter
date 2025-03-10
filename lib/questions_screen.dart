import 'package:flutter/material.dart';
import 'package:quiz_app_flutter/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Question...',
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
          SizedBox(height: 30),
          AnswerButton(answerText: 'Answer 1', onTap: () {
            print('Tapped answer1');
          }),
          AnswerButton(answerText: 'Answer 1', onTap: () {print('Tapped answer2');}),
          AnswerButton(answerText: 'Answer 1', onTap: () {print('Tapped answer3');}),
          AnswerButton(answerText: 'Answer 1', onTap: () {print('Tapped answer4');}),
        ],
      ),
    );
  }
}
