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

  void switchState() {
    setState(() {
      currState = Quesations();
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
