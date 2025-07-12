import 'package:flutter/material.dart';
import 'package:quizarea/start_screen.dart';
import 'package:quizarea/quesations.dart';

class My_App extends StatelessWidget {
  const My_App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Quiz();
  }
}

class _Quiz extends State<MyHomePage> {
  late Widget currState; //late keyword is used to tell dart i will initialize it later

  List<List<String>>  quizResult=[];
  List<List<String>> quizData = [];
  @override
  void initState() {
    // initializing currstate here
    super.initState();

    quizData = quizdatareset();
    quizResult = quizReset();
    currState = Main_Screen(onPressed: switchState);
  }

  List<List<String>> quizdatareset(){
    return [
      [
        'What are the main building blocks of Flutter UIs?',
        'Widgets',
        'Components',
        'Blocks',
        'Functions',
        'Widgets',
      ],
      [
        'How are Flutter UIs built?',
        'By combining widgets in code',
        'By combining widgets in a visual editor',
        'By defining widgets in config files',
        'By using XCode for iOS and Android Studio for Android',
        'By combining widgets in code',
      ],
      [
        'What\'s the purpose of a StatefulWidget?',
        'Update UI as data changes',
        'Update data as UI changes',
        'Ignore data changes',
        'Render UI that does not depend on data',
        'Update UI as data changes',
      ],
      [
        'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
        'StatelessWidget',
        'StatefulWidget',
        'Both are equally good',
        'None of the above',
        'StatelessWidget',
      ],
      [
        'What happens if you change data in a StatelessWidget?',
        'The UI is not updated',
        'The UI is updated',
        'The closest StatefulWidget is updated',
        'Any nested StatefulWidgets are updated',
        'The UI is not updated',
      ],
      [
        'How should you update data inside of StatefulWidgets?',
        'By calling setState()',
        'By calling updateData()',
        'By calling updateUI()',
        'By calling updateState()',
        'By calling setState()',
      ],
    ];
}
  List<List<String>> quizReset(){
    List<List<String>> quizResult=[];
    int x=0;
    while(x<quizData.length){
      //             [Q, ans, false,  selected,trials]
      quizResult.add([ "" , "" , "false" , "" ,""]);
      x++;
    }
    print("quiz reset");
    return quizResult;
  }



  int i=0;
  void switchState() {
    setState(() {
      if (i < quizData.length) {
        if (quizResult[i][0] == quizData[i][0]) {
          if (quizResult[i][1] == quizResult[i][3]) {
            quizResult[i][2] = "true";
            i += 1;
            print("correct choice");

            quizResult[i][0] = quizData[i][0];
            quizResult[i][1] = quizData[i][1];
            quizResult[i][3] = " ";

            currState = Quesations(quizData[i], switchState, quizResult[i]);

          } else {
            print("working here");
            quizResult[i][4] += "1";
            quizData[i].remove(quizResult[i][3]);
            currState = Quesations(quizData[i], switchState, quizResult[i]);
          }
          }else {
          print("Q printed");
          currState = Quesations(quizData[i], switchState, quizResult[i]);
          quizResult[i][0] = quizData[i][0];
          quizResult[i][1] = quizData[i][1];
          quizResult[i][3] = " ";
        }
      }else if(i == quizData.length ){
        print(quizResult);
        currState = Main_Screen(onPressed: switchState);
        i+=1;
      }else{
        i=0;
        quizData = quizdatareset();
        quizResult = quizReset();
        currState = Main_Screen(onPressed: switchState);
      }
    });
  }

  @override
  Widget build(context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 36, 7, 156),
              Color.fromARGB(255, 8, 0, 255),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: currState,
      ),
    );
  }
}
