import 'package:flutter/material.dart';

import './question.dart';
import './questionBank.dart';

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
  var questions = ["cat", "dog"];
  var options = [
    ["cat", "dog", "bear", "pig"],
    ["cat", "dog", "bear", "pig"],
  ];

  var _questionNumber = 0;

  void _answerQuestion(String option) {
    setState(() {
      _questionNumber = _questionNumber + 1;
    });
    //  print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
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
                    child: GridView.count(
                        primary: false,
                        padding: const EdgeInsets.all(0),
                        crossAxisSpacing: 0,
                        mainAxisSpacing: 0,
                        crossAxisCount: 2,
                        childAspectRatio: (1 / 1.45),
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.all(4),
                            child: Image.asset('assets/images/' +
                                questions[_questionNumber] +
                                '.png'),
                          ),
                          Container(
                            padding: const EdgeInsets.all(4),
                            child:
                                Image.asset('assets/images/FairyNeutral.png'),
                          ),
                        ]))),
            Expanded(
              child: Container(
                  color: Colors.black,
                  child: GridView.count(
                    primary: false,
                    padding: const EdgeInsets.all(0),
                    crossAxisSpacing: 0,
                    mainAxisSpacing: 0,
                    crossAxisCount: 2,
                    childAspectRatio: (3 / 2.1),
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(4),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.yellow),
                          ),
                          onPressed: () {
                            _answerQuestion(options[_questionNumber][0]);
                          },
                          child: Text(
                            options[_questionNumber][0],
                            style: TextStyle(
                              fontSize: 40.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(4),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.blue),
                          ),
                          onPressed: () {
                            _answerQuestion(options[_questionNumber][1]);
                          },
                          child: Text(
                            options[_questionNumber][1],
                            style: TextStyle(
                              fontSize: 40.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(4),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.red),
                          ),
                          onPressed: () {
                            _answerQuestion(options[_questionNumber][2]);
                          },
                          child: Text(
                            options[_questionNumber][2],
                            style: TextStyle(
                              fontSize: 40.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(4),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.green),
                          ),
                          onPressed: () {
                            _answerQuestion(options[_questionNumber][3]);
                          },
                          child: Text(
                            options[_questionNumber][3],
                            style: TextStyle(
                              fontSize: 40.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
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
