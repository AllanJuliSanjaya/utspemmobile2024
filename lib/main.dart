import 'package:flutter/material.dart';
import 'halaman_quiz.dart'; // Mengimpor file halaman_quiz.dart yang berisi widget HalamanQuiz

void main() {
  runApp(const MyApp()); // Menjalankan aplikasi Flutter dengan widget MyApp sebagai root widget
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}); // Deklarasi constructor MyApp

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz App'), // Judul aplikasi di app bar
        ),
        body: HalamanQuiz(), // Menampilkan HalamanQuiz sebagai isi body aplikasi
      ),
    );
  }
}
