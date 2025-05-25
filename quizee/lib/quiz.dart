
//this is the lifed state.
import 'package:flutter/material.dart';
import 'package:quizee/data/questions.dart';
import 'package:quizee/question_screen.dart';
import 'package:quizee/start_screen.dart';
import 'package:quizee/result_screen.dart';

class Quiz extends StatefulWidget {
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  // void initState() {
  //   activeScreen = 'question-screen';
  //   super.initState();
  // }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'result-screen';
      });
    }
  }

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void restartQuiz() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(239, 39, 90, 132),
              Color.fromARGB(238, 110, 160, 201),
              Color.fromARGB(221, 169, 196, 221)
            ], begin: Alignment.topRight, end: Alignment.bottomLeft),
          ),
          child: activeScreen == 'start-screen'
              ? StartScreen(switchScreen)
              : activeScreen == 'result-screen'
                  ? ResultsScreen(
                      chosenAnswer: selectedAnswers,
                      onRestart: restartQuiz,
                    )
                  : QuestionScreen(onSelectedAnswer: chooseAnswer),
        ),
      ),
    );
  }
}
