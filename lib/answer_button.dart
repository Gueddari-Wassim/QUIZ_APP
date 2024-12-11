import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget{
  const AnswerButton({
  super.key,
  required this.answertext,
  required this.onTap
  });

  final String answertext;
  final void Function() onTap;
  
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal:30 ,vertical:11 ),
          backgroundColor: const Color.fromARGB(255, 34, 0, 75),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          ),
          child:Text(answertext,textAlign:TextAlign.center),
        );
  }

}