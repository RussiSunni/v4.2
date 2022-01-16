import 'package:flutter/material.dart';

import './question.dart';

void main() {
  var questionList = [];

  Question question001 = Question();
  question001.image = Image.asset('assets/images/cat.png');
  question001.answer = "cat";
  question001.options = ["cat", "dog", "bear", "pig"];

  questionList.add(question001);
}
