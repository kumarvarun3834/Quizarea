
import 'package:flutter/material.dart';
import 'package:quizarea/TextContainer.dart';

class buttons_opt extends StatelessWidget {
  buttons_opt(this.Q,this.opt,this.A,{super.key});
  final String Q,A;
  final String opt;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: () {
        if (opt == A){
          print(Q);
          print("correct");
        }
        else{
        print(Q);
        print(opt);
      }},
      style: OutlinedButton.styleFrom(
        fixedSize: Size(300, 30),
        backgroundColor: Colors.white10,
        foregroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      label: TextContainer(opt, Colors.black, 20)
    );
  }
}