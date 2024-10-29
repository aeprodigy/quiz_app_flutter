import 'package:flutter/material.dart';

class Question {
  final String questionText;
  final Color color;
  final List<String> options;
  final int correctAnswerIndex;

//constructor
  Question(
   { required this.color,
    required this.correctAnswerIndex,
    required this.options,
    required this.questionText,}
  );



}
