import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
class StartScreen extends StatelessWidget{
  const StartScreen(this.startQuiz,{super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
            Image.asset('assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(144, 255, 255, 255), // transparency
            ),
          const SizedBox(height: 60),
          Text(
            'Learn Flutter The funnny way !!',
            style:GoogleFonts.oswald(
              color: Colors.white,
              fontSize: 27,
            ),
            textAlign: TextAlign.center,
            ),
            const SizedBox(height: 50),
            ElevatedButton.icon(
              onPressed:startQuiz,
              style: ElevatedButton.styleFrom(
                foregroundColor:const Color.fromARGB(255, 0, 0, 0),
              ),
              icon: const Icon(Icons.quiz),
              label:Text('Start Quiz ',
              style: GoogleFonts.oswald(
              color: const Color.fromARGB(255, 0, 0, 0),
              fontSize: 25,
            ),
                ),
            )
        ],
      )
      );    
  }
}