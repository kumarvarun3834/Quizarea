import 'package:flutter/material.dart';
import 'package:quizarea/TextContainer.dart';
import 'package:quizarea/opt_buttons.dart';

class  Quesations extends StatelessWidget {
  final VoidCallback onPressed;
  // final VoidCallback onPressed2;
  Quesations(this.dataset,this.onPressed,this.quizResult,{super.key});
  final Map<String,Object> dataset;
  List<String> quizResult;

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(child:Container(
              margin:EdgeInsets.all(40),
              width: double.infinity,
              child: TextContainer(dataset["question"] as String, Color.fromARGB(255, 0, 255, 255), 30)
          )
          ),
          const SizedBox(height: 20),
          Container(margin: EdgeInsets.all(20),
            width: double.infinity,
            child: Column(children: [
              // ...dataset.map()
              if (dataset.length>=3)  buttons_opt(dataset["question"] as String,dataset["options"] as String,dataset["answer"] as String,onPressed,quizResult),
              if (dataset.length>=4)  buttons_opt(dataset["question"] as String,dataset["options"] as String,dataset["answer"] as String,onPressed,quizResult),
              if (dataset.length>=5)  buttons_opt(dataset["question"] as String,dataset["options"] as String,dataset["answer"] as String,onPressed,quizResult),
              if (dataset.length>=6)  buttons_opt(dataset["question"] as String,dataset["options"] as String,dataset["answer"] as String,onPressed,quizResult),
            ])
          )
        ]
    );
  }
}
