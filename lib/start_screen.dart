import 'package:flutter/material.dart';
import 'package:quizarea/TextContainer.dart';
import 'package:quizarea/ImageContainer.dart';
import 'package:quizarea/quesations.dart';


class Main_Screen extends StatefulWidget {
  const Main_Screen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuizScreen();
  }
}

class _QuizScreen extends State<Main_Screen> {
  @override
  Widget build(context) {
    // return Center(child: TextContainer("works", Colors.black, 50));
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
            setState(() {
              Quesation_Screen();
            });
          },
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.black,
            // elevation: 100,
            // side: BorderSide(width: 3),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          icon: Icon(Icons.arrow_right_alt),
          label: TextContainer("Start Quiz", Colors.black, 30),
        )

      ]),
  );
  }
}