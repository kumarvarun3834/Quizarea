import 'package:flutter/material.dart';
import 'package:quizarea/TextContainer.dart';
import 'package:quizarea/opt_buttons.dart';

class  Quesations extends StatelessWidget {
  final VoidCallback onPressed;
  // final VoidCallback onPressed2;
  Quesations(this.dataset,this.onPressed,this.quizResult,{super.key});
  final Map<String,Object> dataset;
  Map<String,Object> quizResult;

  List<Widget> buttons_Data(Map<String,Object> dataset){
    List<Widget> database=[];
    int i=0;
    while (i<=dataset.length){
      database.add(buttons_opt(dataset["question"] as String,(dataset["options"] as List<String>)[i],dataset["answer"] as String,onPressed,quizResult));
      // database.add(dataset["options"][i] as String);
      i++;
  }
  return database;
  }
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
            child: Column(children: buttons_Data(dataset))
          )
        ]
    );
  }
}
