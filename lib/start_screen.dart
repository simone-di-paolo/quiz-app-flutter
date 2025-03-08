import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/quiz-logo.png', width: 150),
          SizedBox(height: 25),
          Text(
            'Learn Flutter the fun way!',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          SizedBox(height: 25),
          OutlinedButton(
            style: ButtonStyle(
              foregroundColor: WidgetStateProperty.all(Colors.white),
            ),
            onPressed: () {
              print('Pressed');
            },
            child: Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
