import 'package:flutter/material.dart';
import 'package:quizee/question_summary/summary_item.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summarydata, {super.key});
  final List<Map<String, Object>> summarydata;

  @override
  Widget build(context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summarydata.map((data) {
            return SummaryItem(data);
          }).toList(),
        ),
      ),
    );
  }
}
