import 'package:flutter/material.dart';
import 'package:quiz_app_flutter/start_screen.dart';

void main() {
  runApp(
    MaterialApp(
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
          child: const StartScreen(),
        ),
      ),
    ),
  );
}
