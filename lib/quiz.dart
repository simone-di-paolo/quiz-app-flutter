import 'package:flutter/material.dart';
import 'package:quiz_app_flutter/start_screen.dart';
import 'package:quiz_app_flutter/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;

  @override
  void initState() {
    super.initState();
    activeScreen = StartScreen(switchScreen);
  }

  void switchScreen() {
    setState(() {
      activeScreen = QuestionsScreen();
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      title: 'Quiz App - Flutter',
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 74, 21, 179),
                Color.fromARGB(255, 104, 62, 188),
              ],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
            ),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
