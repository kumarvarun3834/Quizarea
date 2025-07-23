import 'package:flutter/material.dart';
import 'package:quizarea/TextContainer.dart';
import 'package:quizarea/opt_buttons.dart';

class Quesations extends StatefulWidget {
  final List<Map<String, Object>> dataSet;
  final List<Map<String, Object>> quizResult;
  // To go to the next question
  Quesations(this.dataSet, this.quizResult, this.currState,{super.key});
  String currState;

  @override
  State<Quesations> createState() => _Quesations();
}

class _Quesations extends State<Quesations> {
  @override
  Widget build(BuildContext context) {
  List<Map<String, Object>> dataSet = [];
  List<Map<String, Object>> quizResult = [];
  String current_state = "";
  @override
  void initState() {
    super.initState();
    dataSet = widget.dataSet;
    quizResult = widget.quizResult;
    current_state=widget.currState;
  }

  int i = 0;

  void switchState() {
    setState(() {
      if (i < dataSet.length) {
        _data_selection(dataSet[i]);
        i++;
      }else{
        current_state="result_screen";
      }
    });
  }

  List<Widget> buttons_Data(Map<String, Object> dataset) {
    List<Widget> database = [];
    int i = 0;
    while (i <= dataset.length) {
      database.add(buttons_opt(
          (dataset["options"] as List<String>)[i], switchState ,(dataset["answer"] as List<Map<String, Object>>)[i],
          ));
      // database.add(dataset["options"][i] as String);
      i++;
    }
    return database;
  }

  _data_selection(Map<String, Object> dataSet) {
    Widget build(BuildContext context) {
      return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(child: Container(
                margin: EdgeInsets.all(40),
                width: double.infinity,
                child: TextContainer(dataSet["question"] as String,
                    Color.fromARGB(255, 0, 255, 255), 30)
            )
            ),
            const SizedBox(height: 20),
            Container(margin: EdgeInsets.all(20),
                width: double.infinity,
                child: Column(children: buttons_Data(dataSet))
            )
          ]
      );
    }
  }
  }



// import 'package:flutter/material.dart';
// import 'package:quizarea/TextContainer.dart';
// import 'package:quizarea/opt_buttons.dart';
//
// class  Quesations extends StatefulWidget {
//   final VoidCallback onPressed;
//   // final VoidCallback onPressed2;
//   Quesations(this.dataset,this.quizResult,{super.key});
//   final List<Map<String,Object>> dataset;
//   list<Map<String,Object>> quizResult;
//   @override
//   State<StatefulWidget> createState() {
//     return _Quesations();
//   }
//
//   class _Quesations extends State<Quesations> {
//
//   void switchState() {
//   setState(() {
//
//   }
//   }
//   }

//
// void handleSelection(String opt) {
//   final currentResult = widget.quizResult[widget.index];
//   final currentData = widget.dataset[widget.index];
//
//   List<String> selection = List<String>.from(currentResult["selection"] ?? []);
//
//   if (!selection.contains(opt)) {
//     selection.add(opt);
//     currentResult["selection"] = selection;
//     currentResult["trials"] = (currentResult["trials"] ?? 0) + 1;
//
//     // Wrong answer → remove option
//     if (opt != currentResult["answer"]) {
//       setState(() {
//         (currentData["options"] as List<String>).remove(opt);
//       });
//     } else {
//       // Correct answer → move to next
//       print("Correct!");
//       widget.onNext();
//     }
//   } else {
//     print("$opt already selected");
//   }

// List<Widget> buttons_Data() {
//   final currentData = widget.dataset;
//   final currentResult = widget.quizResult;

// List<Widget> widgets = [];
// List<String> options = List<String>.from(currentData["options"] ?? []);
// String question = currentData["question"] as String;
// String answer = currentData["answer"] as String;

//   for (String opt in options) {
//     widgets.add(
//       buttons_opt(
//         question,
//         opt,
//         answer,
//             () => handleSelection(opt),
//         currentResult,
//       ),
//     );
//   }
//   return widgets;
// }
// }