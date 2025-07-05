import 'package:flutter/material.dart';
import 'package:quizarea/TextContainer.dart';
import 'package:quizarea/ImageContainer.dart';

class Quesation_Screen extends StatefulWidget{
  const Quesation_Screen({super.key});
  @override
  State<StatefulWidget> createState() {
    return _Ques_screen();
  }
}

class _Ques_screen extends State<Quesation_Screen>{
  @override
  Widget build(context) {
    return Center(child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //   mainAxisSize: MainAxisSize.min,
        children: [
          ImageContainer("assets/images/quiz-logo.png",Color.fromARGB(
              128, 255, 255, 255),350,300),
          const SizedBox(height: 50,),
          TextContainer("Are you ready ?",Color.fromARGB(255, 255, 225, 0),30),
          const SizedBox(height: 25),

          OutlinedButton.icon(
            onPressed: () {
              Quesation_Screen();
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.black,
              // elevation: 100,
              // side: BorderSide(width: 3),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            icon: Icon(Icons.keyboard_arrow_left),
            label: TextContainer("Start Quiz", Colors.black, 30),
          )

        ]),
    );
  }
}