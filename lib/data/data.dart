import 'package:flutter/material.dart';
import 'package:quiz_app/models/question.dart';

final List<Question> quizQuestion = [
  Question(
    color: Colors.red,
    correctAnswerIndex: 0,
    options: ['Red', 'Blue', 'Grey', 'Orange'],
    questionText: "What Color is this?",
  ),
  Question(
    color: Colors.orange,
    correctAnswerIndex: 3,
    options: ['Red', 'Blue', 'Grey', 'Orange'],
    questionText: "What Color is this?",
  ),
  Question(
    color: Colors.grey,
    correctAnswerIndex: 2,
    options: ['Red', 'Blue', 'Grey', 'Orange'],
    questionText: "What Color is this?",
  ),
  Question(
    color: Colors.green,
    correctAnswerIndex: 2,
    options: ['Red', 'Blue', 'Green', 'Orange'],
    questionText: "What Color is this?",
  ),
];
