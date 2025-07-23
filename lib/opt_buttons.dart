
import 'package:flutter/material.dart';
import 'package:quizarea/TextContainer.dart';

class buttons_opt extends StatelessWidget {
  final VoidCallback onPressed;
  buttons_opt(this.opt,this.onPressed,this.quizResult,{super.key});
  // final String Q,A;
  final String opt;
  Map<String,Object> quizResult;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 350,
        child: OutlinedButton.icon(
            onPressed: () {
              List<String> selectionList = (quizResult["selection"] as List).cast<String>();

              if (!selectionList.contains(opt)) {
                selectionList.add(opt);
              } else {
                print("$opt already exists");
              }

              print(quizResult);
              onPressed();
            },
            style: OutlinedButton.styleFrom(
              // fixedSize: Size(300),
              // minimumSize: Size(350, 30) ,
              // maximumSize: Size(350, 200),
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
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