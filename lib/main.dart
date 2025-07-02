import 'package:flutter/material.dart';
import 'package:quizarea/TextContainer.dart';
import 'package:quizarea/ImageContainer.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  // final String title;

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
      child: Center(child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [ImageContainer("assets/images/quiz-logo.png"),
          const SizedBox(height: 50,),
          TextContainer("Are you ready ?",Color.fromARGB(255, 255, 225, 0),30),
            const SizedBox(height: 25),

            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: TextContainer("Start Quiz", Colors.black, 30),
            )

          ]),
      )
      )
      );
    }
  }

  // @override
  // State<StatefulWidget> createState() {
  //   // TODO: implement createState
  //   throw UnimplementedError();
  // }
  // State<MyHomePage> createState() => _MyHomePageState();

//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text('You have pushed the button this many times:'),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
