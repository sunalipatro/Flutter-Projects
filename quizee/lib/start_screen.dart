import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.quizscreen, {super.key});
  final void Function() quizscreen;
  @override
  Widget build(context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Opacity(
          opacity: 0.5,
          child: Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
          ),
        ),
        const SizedBox(
          height: 80,
        ),
        Text(
          'Learn Flutter the fun way!',
          style: GoogleFonts.oswald(
              color: Color.fromARGB(255, 0, 0, 0), fontSize: 24),
        ),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton.icon(
          onPressed: quizscreen,
          label: const Text('Start Quiz'),
          icon: const Icon(Icons.arrow_right_alt),
          style: OutlinedButton.styleFrom(foregroundColor: Colors.black),
        )
      ],
    ));
  }
}
