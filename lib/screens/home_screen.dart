import 'package:flutter/material.dart';
import 'package:quiz_app/data/data.dart';

class HomeScreen extends StatefulWidget {
  // Changed from QuizScreen to HomeScreen
  @override
  _HomeScreenState createState() =>
      _HomeScreenState(); // Updated State class name
}

class _HomeScreenState extends State<HomeScreen> {
  // Changed from _QuizScreenState to _HomeScreenState
  int _currentQuestionIndex = 0;
  int _score = 0;

  void _answerQuestion(int selectedIndex) {
    if (quizQuestion[_currentQuestionIndex].correctAnswerIndex ==
        selectedIndex) {
      _score++;
    }

    if (_currentQuestionIndex < quizQuestion.length - 1) {
      setState(() {
        _currentQuestionIndex++;
      });
    } else {
      _showResult();
    }
  }

  void _showResult() {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text("Quiz Completed!"),
        content: Text("Your Score: $_score / ${quizQuestion.length}"),
        actions: [
          TextButton(
            onPressed: () {
              setState(() {
                _currentQuestionIndex = 0;
                _score = 0;
              });
              Navigator.of(ctx).pop();
            },
            child: Text("Restart Quiz"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final question = quizQuestion[_currentQuestionIndex];

    return Scaffold(
      appBar: AppBar(
        title: Text("Color Quiz"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 150,
              color: question.color, // Display the color for the question
            ),
            SizedBox(height: 20),
            Text(
              question.questionText,
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ...question.options.asMap().entries.map((entry) {
              int idx = entry.key;
              String option = entry.value;
              return ElevatedButton(
                onPressed: () => _answerQuestion(idx),
                child: Text(option),
              );
            }),
          ],
        ),
      ),
    );
  }
}
