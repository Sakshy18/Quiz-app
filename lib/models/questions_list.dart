class QuestionsList {
  final String question;
  final List<String> answers;
  final String correctAnswer;

  QuestionsList({
    required this.question,
    required this.answers,
    required this.correctAnswer,
  });

  List<String> getshuffledAnswer() {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
