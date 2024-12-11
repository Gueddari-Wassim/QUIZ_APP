import 'package:advanced_basics/data/questions.dart';
import 'package:advanced_basics/questions_screen.dart';
import 'package:flutter/material.dart';
import 'package:advanced_basics/start_screen.dart';
import 'package:advanced_basics/results_screen.dart';
class Quiz extends StatefulWidget{
  const Quiz({super.key});
  @override 
  State<Quiz> createState(){
    return _Quiz();
  } 
}
var alignment1=Alignment.topLeft;
var alignment2=Alignment.bottomRight;

class _Quiz extends State<Quiz>{

  List<String> selectedAnswers=[];
  var activeScreen='start_screen';

  void switchScreen(){
    setState(() {
       activeScreen='questions_screen';
    });
  }

  void chooseAnswer(String answer){
      selectedAnswers.add(answer);
      if(selectedAnswers.length== questions.length){
        setState(() {
          activeScreen='results_screen';
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
  Widget build(BuildContext context){
    Widget screenWidget= StartScreen(switchScreen);
    
    if (activeScreen=='questions_screen'){
      screenWidget= QuestionsScreen(
        onSelectAnswer: chooseAnswer
        );
    }
    if(activeScreen=='results_screen'){
      screenWidget=ResultsScreen(chosenAnswers:selectedAnswers, onRestart: restartQuiz,);
    }


    return MaterialApp(
    home: Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors:const [
                Color.fromARGB(255, 67, 3, 107),
              Color.fromARGB(255, 112, 53, 229),
            ],
            begin: alignment1,
            end: alignment2,
            )
            ),
        child:screenWidget,
        ),
    ),
);
}  
}