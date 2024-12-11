import 'package:flutter/material.dart';
import 'package:advanced_basics/answer_button.dart';
import 'package:advanced_basics/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';


class QuestionsScreen  extends StatefulWidget{
  const QuestionsScreen({super.key,required this.onSelectAnswer,});
  
  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState(){
    return _QuestionsScreen();
  }
}
class _QuestionsScreen extends State<QuestionsScreen>{
  var currentQuestionIndex=0;

  void answerQuestion(String selectedAnswers){
    widget.onSelectAnswer(selectedAnswers);
    //solution1:
    //currentQuestionIndex+=1;
    //solution2:
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(context){
    final currentQuestion =questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(23),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //vertical
          crossAxisAlignment: CrossAxisAlignment.stretch,//horizotal
          children: [
          Text(
            currentQuestion.text,
            style:GoogleFonts.oswald(
              color: const Color.fromARGB(255, 217, 144, 253),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
            ),
        
          const SizedBox(height: 30,),
          ...currentQuestion.getShflledAnswers().map((answer){// these three dots will simply take all the valuesin a list or an iterable and pull them out of the list,pull them out of the iterable,andinstead place them as comma-separated values
            return AnswerButton(
              answertext: answer,
              onTap: (){
                answerQuestion(answer);
              }
            );
          }), //Map allows you to convert, to transform, you could say,the values in a list to other values
          
          //or you can do this instead of using map but its longer and redandant 

          // AnswerButton(
          //   answertext: currentQuestion.answers[0],
          //   onTap:(){}
          // ),
          // AnswerButton(
          //   answertext: currentQuestion.answers[1],
          //   onTap:(){}
          // ),
          // AnswerButton(
          //   answertext: currentQuestion.answers[2],
          //   onTap:(){}
          // ),
          // AnswerButton(
          //   answertext: currentQuestion.answers[3],
          //   onTap:(){}),
        ],
        ),
      ),
    );
  } 
}