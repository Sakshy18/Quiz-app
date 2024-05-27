import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:secon_app/answer_button.dart';
import 'package:secon_app/data/questions.dart';

import 'package:google_fonts/google_fonts.dart';

class Questions extends StatefulWidget {
  const Questions({super.key});

  @override
  State<Questions> createState() {
    return _QuestionsState();
  }
}

class _QuestionsState extends State<Questions> {
  var currenQuestionIndex = 0;
  // String? _selectedAnswer;
  bool _showCorrectAnswer = false;
  void answerQuestion() {
    setState(() {
      currenQuestionIndex++;
    });
  }
  // var currentQuestionIndex = 0;
  // void answerQuestion(String answer) {
  //   setState(() {
  //     _selectedAnswer = answer;
  //     _showCorrectAnswer = true;
  //   });
  // }

  @override
  Widget build(context) {
    final currentQuestion = questions[currenQuestionIndex];
    final shuffledAnswers = List<String>.from(currentQuestion.answers)
      ..shuffle();
    return SizedBox(
      width: double.infinity, //use as much width as u can
      child: Container(
        margin: EdgeInsets.all(40),
        child: (Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                currentQuestion.question,
                style: GoogleFonts.lato(
                  fontSize: 22,
                  color: Color.fromARGB(255, 252, 241, 255),
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.left,
              ),
              const SizedBox(
                height: 30,
              ),
              ...currentQuestion.getshuffledAnswer().map((answer) {
                return AnswerButton(answer, answerQuestion);
              }),
              if (!_showCorrectAnswer) ...[
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'correct answer is : ${currentQuestion.correctAnswer}',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )
              ],

              //executes this function on every list item and pass the item to the functions as an argument
              //it doesnt change original list calling the map function, map maked a new list

              // Text(
              //   currentQuestion.correctAnswer,
              //   style: TextStyle(color: Colors.white, fontSize: 18),
              // )
            ])),
      ),
    );
  }
}

// List<Widget> _buildAnswerButtons(List<String> answers) {
//   return answers
//       .map((item) => Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               AnswerButton(item, answerQuestion),
//               const SizedBox(
//                 height: 10, // Adjust the height as needed
//               ),
//             ],
//           ))
//       .toList();
// }



//  return SizedBox(
//       width: double.infinity, //use as much width as u can
//       child: (Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//         Text(
//           currentQuestion.question,
//           style: TextStyle(
//             fontSize: 20,
//             color: Colors.white,
//             fontWeight: FontWeight.w400,
//           ),
//         ),
//         const SizedBox(
//           height: 30,
//         ),
//         AnswerButton(currentQuestion.answers[0], () {}),
//         const SizedBox(
//           height: 15,
//         ),
//         AnswerButton(currentQuestion.answers[1], () {}),
//         const SizedBox(
//           height: 15,
//         ),
//         AnswerButton(currentQuestion.answers[2], () {}),
//         const SizedBox(
//           height: 30,
//         ),
//         Text(
//           currentQuestion.correctAnswer,
//           style: TextStyle(color: Colors.white, fontSize: 18),
//         )
//       ])),
//     );

//this code could be used when constnt number of questions are guven but to dynamically generate no of buttons based on  answers 
//other code is needed which is implemented