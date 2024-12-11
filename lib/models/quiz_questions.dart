class QuizQuestion {
  const QuizQuestion(this.text,this.answers,);
  
  final String text;
  final List<String>answers;

  List<String>getShflledAnswers(){
    final shuffledList=List.of(answers);
    shuffledList.shuffle(); //shuffle role is to mix items (change their order) 
    return shuffledList;
  }

}