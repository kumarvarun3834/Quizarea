import 'package:flutter/material.dart';
import 'package:quizarea/TextContainer.dart';
import 'package:quizarea/opt_buttons.dart';

class Quesations extends StatefulWidget {
  final List<Map<String, Object>> dataSet;
  final List<Map<String, Object>> quizResult;
  final void Function(String) onStateChange;

  Quesations(this.dataSet, this.quizResult,{
    required this.onStateChange,
    super.key,
  });

  @override
  State<Quesations> createState() => _Quesations();
}

class _Quesations extends State<Quesations> {
  late List<Map<String, Object>> dataSet;
  late List<Map<String, Object>> quizResult;

  int i = 0;

  @override
  void initState() {
    super.initState();
    dataSet = widget.dataSet;
    quizResult = widget.quizResult;
    // current_state = widget.currState;
  }

  void switchToResultScreen() {
    widget.onStateChange("result_screen");
  }

  void switchState() {
    setState(() {
      if (i < dataSet.length - 1) {
        i++;
      } else {
        switchToResultScreen();
      }
    });
  }

  List<Widget> buttons_Data(Map<String, Object> dataset) {
    List<Widget> database = [];
    List<String> options = dataset["options"] as List<String>;
    // String answer = dataset["answer"] as String;
    for (var option in options) {
      database.add(
        buttons_opt(option, switchState , quizResult[i]),
      );
    }
    return database;
  }

  @override
  Widget build(BuildContext context) {

    Map<String, Object> currentData = dataSet[i];
    quizResult[i]["question"]=dataSet[i]["question"]!;
    quizResult[i]["answer"]=dataSet[i]["answer"]!;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Center(
          child: Container(
            margin: const EdgeInsets.all(40),
            width: double.infinity,
            child: TextContainer(
              currentData["question"] as String,
              const Color.fromARGB(255, 0, 255, 255),
              30,
            ),
          ),
        ),
        const SizedBox(height: 20),
        Container(
          margin: const EdgeInsets.all(20),
          width: double.infinity,
          child: Column(children: buttons_Data(currentData,)),
        ),
      ],
    );
  }
}

