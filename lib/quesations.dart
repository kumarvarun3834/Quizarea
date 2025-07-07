import 'package:flutter/material.dart';
import 'package:quizarea/TextContainer.dart';
import 'package:quizarea/ImageContainer.dart';

class  Quesations extends StatelessWidget {
  // final VoidCallback onPressed;
  const Quesations({super.key});
  // Widget next;

  @override
  Widget build(BuildContext context) {
    // return Center(child: TextContainer("works", Colors.black, 50));
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        //   mainAxisSize: MainAxisSize.min,
        children: [
          // ImageContainer("assets/images/quiz-logo.png",Color.fromARGB(
          //     128, 255, 255, 255),350,300),
          // const SizedBox(height: 50,),
          TextContainer("Are you ready ?",Color.fromARGB(255, 255, 225, 0),30),
          const SizedBox(height: 25),

          OutlinedButton.icon(
            onPressed: (){
              print("pressed A");
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            // icon: Icon(Icons.arrow_right_alt),
            label: TextContainer("A.Start Quiz here we go man", Colors.black, 30),
          ),
          SizedBox(height: 10,),

          OutlinedButton.icon(
            onPressed: (){
              print("pressed B");
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            // icon: Icon(Icons.arrow_right_alt),
            label: TextContainer("B.Start Quiz here we go man", Colors.black, 30),
          ),
          SizedBox(height: 10,),
          
          OutlinedButton.icon(
            onPressed: (){
              print("pressed C");
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            // icon: Icon(Icons.arrow_right_alt),
            label: TextContainer("C.Start Quiz here we go man", Colors.black, 30),
          ),
          SizedBox(height: 10,),

          OutlinedButton.icon(
            onPressed: (){
              print("pressed D");
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            // icon: Icon(Icons.arrow_right_alt),
            label: TextContainer("D.Start Quiz here we go man", Colors.black, 30),
          )

        ],
    );
  }
}
