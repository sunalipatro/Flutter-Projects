import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {required this.answerText, required this.onTap, super.key});

  final String answerText;
  final void Function() onTap;
  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 4, 102, 132),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10)),
      child: Text(
        answerText,
        textAlign: TextAlign.center,
      ),
    );
  }
}
