import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen(this.startQuiz, {super.key});

  final void Function() startQuiz; //startquiz is a variable now
//in this variable we stired the function
  @override
  Widget build(context) {
    return (Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          (Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(90, 255, 255, 255),
          )),
          SizedBox(height: 40),
          (const Text(
            "Learn Flutter the fun way !",
            style: TextStyle(
              color: Color.fromARGB(255, 251, 251, 251),
              fontSize: 24,
              fontWeight: FontWeight.w100,
            ),
          )),
          SizedBox(height: 40),
          TextButton.icon(
            onPressed: () {
              startQuiz();
            },
            icon: Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
            label: Text(
              "Start Quiz",
              style: TextStyle(color: Colors.white),
            ),
            style: TextButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 82, 14, 171),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
            ),
          ),
        ],
      ),
    ));
  }
}
