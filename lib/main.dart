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
                            child: Image.asset('assets/images/Cat.png'),
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
                          onPressed: () {},
                          child: const Text(
                            'cat',
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
                          onPressed: () {},
                          child: const Text(
                            'dog',
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
                          onPressed: () {},
                          child: const Text(
                            'bear',
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
                          onPressed: () {},
                          child: const Text(
                            'pig',
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
