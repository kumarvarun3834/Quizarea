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

  @override
  void initState() {
    // initializing currstate here
    super.initState();
    currState = Main_Screen(onPressed: switchState);
  }
  final List<List<String>> quizData = [
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

  int i=0;

  void switchState() {
    setState(() {
      if (i < quizData.length) {
        currState = Quesations(quizData[i], switchState, switchState);
        i += 1;
      }else{

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
