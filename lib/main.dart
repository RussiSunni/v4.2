import 'package:flutter/material.dart';

import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's your favourite colour?",
      "What's your favourite animal?"
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text(
          "V4.2",
        )),
        body: Column(
          children: [
            Expanded(
                child: Container(
              color: Colors.black,
            )),
            Expanded(
              child: Container(
                  color: Colors.black,
                  child: GridView.count(
                    primary: false,
                    padding: const EdgeInsets.all(5),
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                    crossAxisCount: 2,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: const Text("cat"),
                        color: Colors.yellow[100],
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: const Text('dog'),
                        color: Colors.blue[100],
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: const Text('bear'),
                        color: Colors.red[100],
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: const Text('pig'),
                        color: Colors.green[100],
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
