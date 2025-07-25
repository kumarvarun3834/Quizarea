import 'package:flutter/material.dart';
import 'package:quizarea/TextContainer.dart';

class ResultScreen extends StatelessWidget {
  final List<Map<String,Object>> quizResult;
  final List<Map<String,Object>> quizData;

  // final int originalOptionsPerQuestion;

  const ResultScreen(this.quizData,this.quizResult, {super.key});

  int getScoreForQuestion(List<String> result) {
    return 0;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> result_data = [];
    int i = 0;

    while (i < quizResult.length-1) {
      Map<String, Object> resultDataset = quizResult[i];
      Map<String, Object> data = quizData[i];
      List<Widget> selections=[];
      int y=0;
      while(y<((resultDataset["selection"] as List).cast<String>()).length){
        if(y==(((resultDataset["selection"] as List).cast<String>()).length)-1){
        selections.add(
            TextContainer("Selection ${y+1}:",Colors.green,15));}
        else{
          selections.add(
              TextContainer("Selection ${y+1}:",Colors.red,15));}
        }
        selections.add(TextContainer(((resultDataset["selection"] as List).cast<String>())[y],Colors.white,15));
            y++;


      result_data.add(Container(
          margin: const EdgeInsets.all(20),
          width: double.infinity,
          child: IntrinsicHeight(child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                width: MediaQuery.of(context).size.width * 0.15, // 20% width
                color: Colors.blueGrey,
                  child: Center(child:TextContainer((i+1).toString(), Colors.white, 15))
              ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.7, // 70% width
                  color: Colors.blueGrey,
                  padding: EdgeInsets.all(9),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextContainer("Quesation: ${resultDataset["question"] as String}", Colors.red, 15),
                      TextContainer(
                        "Marks Obtained: ${(data["options"] as List).cast<String>().length -
                                (resultDataset["selection"] as List).cast<String>().length}",
                        Colors.white,
                        15,
                      ),
                      TextContainer("Correct Answer: ${resultDataset["answer"] as String}", Colors.white, 15),
                      TextContainer("Choices Record: ", Colors.white, 15),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: selections
                        ,)
                    ],

                  ),
                ),],
            )
      )
      )
      );
      i++;
    }
    print(result_data);


    // return TextContainer("text", Colors.white, 30);
    return SingleChildScrollView(child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: result_data,
    )
    );
  }
}
