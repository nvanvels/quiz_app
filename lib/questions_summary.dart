import 'package:flutter/material.dart';
import 'package:quiz_app/summary_item.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return SummaryItem(data);        
        }).toList(),
      ),
    ),
  );
 }
}
// replace text widget with widget that wraps number in color red or blue
// user answers and correct answers change something with color for widget