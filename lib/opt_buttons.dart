
import 'package:flutter/material.dart';
import 'package:quizarea/TextContainer.dart';

class buttons_opt extends StatelessWidget {
  final VoidCallback onPressed;
  buttons_opt(this.Q,this.opt,this.A,this.onPressed,this.$quizResult,{super.key});
  final String Q,A;
  final String opt;
  List<String> $quizResult;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 350,
        child: OutlinedButton.icon(
      onPressed: (){
        $quizResult[3] = opt;
        print($quizResult);
        onPressed;
        },
      style: OutlinedButton.styleFrom(
        // fixedSize: Size(300),
        // minimumSize: Size(350, 30) ,
        // maximumSize: Size(350, 200),
        backgroundColor: Colors.white10,
        foregroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
    ),
    label: TextContainer(opt, Colors.black, 20)
    )
    );
  }
}