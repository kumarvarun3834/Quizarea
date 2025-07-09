
import 'package:flutter/material.dart';
import 'package:quizarea/TextContainer.dart';

class buttons_opt extends StatelessWidget {
  buttons_opt(this.opt,{super.key});
  final String opt;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: () {
        print(opt);
      },
      style: OutlinedButton.styleFrom(
        fixedSize: Size(300, 30),
        backgroundColor: Colors.black12,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
// icon: Icon(Icons.arrow_right_alt),
      label: TextContainer(opt, Colors.white, 20)
    );
  }
}