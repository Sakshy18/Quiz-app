import 'package:flutter/material.dart';
import 'package:secon_app/question_screen.dart';
import 'package:secon_app/splash_screen.dart';

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
    activeScreen = SplashScreen(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = const Questions();
    });
  }
  //takes no argumnet returns no value. switch screen

  @override
  Widget build(context) {
    // final screenWidget = activeScreen == 'start-screen'
    //     ? SplashScreen(switchScreen)
    //     : Questions(); //alternate for screenswitching
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: activeScreen,
        backgroundColor: Colors.deepPurple,
      ),
    ));
  }
}

// Widget screenwidget = SplashScreen();

// if(activeScreen == 'questions-screen')
// {
// screenWidget = const QuestionsScreen();
// }
//one more approach for ternary operations 

