import 'package:flutter/material.dart';
import 'package:quizarea/TextContainer.dart';
import 'package:quizarea/opt_buttons.dart';

class  Quesations extends StatelessWidget {
  final VoidCallback onPressed;
  final VoidCallback onPressed2;
  const Quesations(this.dataset,this.onPressed,this.onPressed2,{super.key});
  final List<String> dataset;

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child:
          TextContainer(dataset[0], Color.fromARGB(255, 0, 255, 255), 30)),
          const SizedBox(height: 20),
          buttons_opt(dataset[0],dataset[1],dataset[5],onPressed),
          buttons_opt(dataset[0],dataset[2],dataset[5],onPressed),
          buttons_opt(dataset[0],dataset[3],dataset[5],onPressed),
          buttons_opt(dataset[0],dataset[4],dataset[5],onPressed),
        ]
    );
  }
}
