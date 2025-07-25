import 'package:flutter/material.dart';
import 'package:quizarea/TextContainer.dart';

class ResultScreen extends StatelessWidget {
  final List<Map<String,Object>> quizResult;
  // final int originalOptionsPerQuestion;

  const ResultScreen(this.quizResult, {super.key});

  int getScoreForQuestion(List<String> result) {
    return 0;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> result_data = [];
    int i = 0;
    while (i < quizResult.length) {
      Map<String, Object> data = quizResult[i];
      Container(
          margin: const EdgeInsets.all(20),
          width: double.infinity,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                width: MediaQuery.of(context).size.width * 0.2, // 20% width
                height: 100,
                color: Colors.green,
                  child: Center(child:TextContainer(i.toString(), Colors.white, 15))
              ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.7, // 70% width
                  height: 100,
                  color: Colors.orange,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [],),
                ),],
            )
      );
      i++;
    }

    // return TextContainer("text", Colors.white, 30);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: result_data,
    );
  }
}
