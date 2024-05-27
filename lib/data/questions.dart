import 'package:secon_app/models/questions_list.dart';

var questions = [
  QuestionsList(
      question: 'What is main building block of flutter?',
      answers: ['Widgets', 'classes', 'Blocks', 'Functions'],
      correctAnswer: 'Widgets'),
  QuestionsList(
      question: 'What is Flutter?',
      answers: [
        'an open-source backend development framework',
        'an open-source UI toolkit',
        'an open-source programming language for cross-platform applications',
        'a DBMS toolkit'
      ],
      correctAnswer: 'an open-source UI toolkit'),
  QuestionsList(
      question:
          'Which programming language is used to build Flutter applications?',
      answers: ['Kotlin', 'Dart', 'Java', 'Go'],
      correctAnswer: 'Dart'),
  QuestionsList(
      question: 'How many types of widgets are there in Flutter?',
      answers: ['1', '2', '4', '6+'],
      correctAnswer: '2'),
  QuestionsList(
      question: 'A sequence of asynchronous Flutter events is known as a:',
      answers: ['Flow', 'Current', 'Stream', 'Series'],
      correctAnswer: 'Stream'),
];
