import 'package:flutter/material.dart';
import 'halaman_quiz.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Quiz App'),
            ),
            body: HalamanQuiz(),
            ),
        );
    }
}