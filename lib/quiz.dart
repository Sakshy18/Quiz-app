import 'package:flutter/material.dart';
import 'package:secon_app/data/questions.dart';
import 'package:secon_app/question_screen.dart';
import 'package:secon_app/splash_screen.dart';
import 'package:secon_app/result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = SplashScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(
        onSelectAnswer: chooseAnswer,
      );
    }

    if (activeScreen == 'results-screen') {
      screenWidget = ResultScreen(
        chosenAnswers: selectedAnswers,
        onRestart: restartQuiz,
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
// class Quiz extends StatefulWidget {
//   const Quiz({super.key});
//   @override
//   State<Quiz> createState() {
//     return _QuizState();
//   }
// }

// class _QuizState extends State<Quiz> {
//   List<String> selectedAns = [];
//   late Widget activeScreen;

//   @override
//   void initState() {
//     activeScreen = SplashScreen(switchScreen);
//     super.initState();
//   }

//   void switchScreen() {
//     setState(() {
//       activeScreen = Questions(chooseAns);
//     });
//   }

//   //takes no argumnet returns no value. switch screen

//   void chooseAns(String answer) {
//     selectedAns.add(answer);

//     if (selectedAns.length == questions.length) {
//       setState(() {
      

//         activeScreen = ResultScreen(selectedAns);
//       });
//     }
//   }

//   @override
//   Widget build(context) {
//     // Widget screenWidget = SplashScreen(switchScreen);
//     // if (activeScreen == Questions) {
//     //   screenWidget = Questions(
//     //     onselectAnswer: chooseAns,
//     //   );
//     // }

//     // if (activeScreen == ResultScreen) {
//     //   screenWidget = ResultScreen(
//     //     chosenAnswers: selectedAnswers,
//     //   );
//     // }
//     // final screenWidget = activeScreen == 'start-screen'
//     //     ? SplashScreen(switchScreen)
//     //     : Questions(); //alternate for screenswitching
//     return (MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: activeScreen,
//         backgroundColor: Colors.deepPurple,
//       ),
//     ));
//   }
// }

// // Widget screenwidget = SplashScreen();

// // if(activeScreen == 'questions-screen')
// // {
// // screenWidget = const QuestionsScreen();
// // }
// //one more approach for ternary operations
