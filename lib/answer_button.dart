import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.answerText, this.onPress, {super.key});

  final String answerText;
  final VoidCallback onPress;
  @override
  Widget build(context) {
    return ElevatedButton.icon(
      onPressed: onPress,
      icon: const Icon(
        Icons.circle,
        color: Colors.black26,
        size: 12,
      ),
      label: Text(
        answerText,
        textAlign: TextAlign.center,
      ),
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(20),
          backgroundColor: const Color.fromARGB(255, 82, 14, 171),
          foregroundColor: Colors.white,
          textStyle: const TextStyle(fontSize: 16),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))),
    );
  }
}
