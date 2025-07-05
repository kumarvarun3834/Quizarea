import 'package:flutter/material.dart';
import 'package:quizarea/start_screen.dart';
import 'package:quizarea/quesations.dart';

class My_App extends StatelessWidget {
  const My_App({super.key});

  // This widget is the root of your application.
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
// final String title;
}

class _Quiz extends State<MyHomePage>{
  Widget currState=Main_Screen();
  void switchState(){
    setState(() {
      currState=const Quesation_Screen();
    });
  }
  @override
  Widget build( context) {
    return Scaffold(
      // body: Center(child:TextContainer("working",Color.fromARGB(255, 255, 225, 0),30)),
        body: Container(
          // alignment: Alignment.center,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors:
                [
                  Color.fromARGB(255, 36, 7, 156),
                  Color.fromARGB(255, 8, 0, 255)
                ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight )
            ),
            child: currState
        )
    );
  }
}
