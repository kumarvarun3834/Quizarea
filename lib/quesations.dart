import 'package:flutter/material.dart';
import 'package:quizarea/TextContainer.dart';
import 'package:quizarea/opt_buttons.dart';

class  Quesations extends StatelessWidget {
  final VoidCallback onPressed;
  // final VoidCallback onPressed2;
  Quesations(this.$dataset,this.onPressed,this.$quizResult,{super.key});
  final List<String> $dataset;
  List<List<String>> $quizResult;
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child:Container(width: 350,child:
          TextContainer($dataset[0], Color.fromARGB(255, 0, 255, 255), 30)
          )
          ),
          const SizedBox(height: 20),
          Container(
            child: Column(children: [
              if ($dataset.length>=3)  buttons_opt($dataset[0],$dataset[2],$dataset[1],onPressed),
              if ($dataset.length>=4)  buttons_opt($dataset[0],$dataset[3],$dataset[1],onPressed),
              if ($dataset.length>=5)  buttons_opt($dataset[0],$dataset[4],$dataset[1],onPressed),
              if ($dataset.length>=6)  buttons_opt($dataset[0],$dataset[5],$dataset[1],onPressed),
          ]
            )
          )
        ]
    );
  }
}
