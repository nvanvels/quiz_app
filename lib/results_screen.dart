import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/questions_summary.dart';

class ResultsScreen extends StatelessWidget{
  const ResultsScreen({super.key, 
  required this.chosenAnswers,
  required this.onPressed, 
  });

  final void Function() onPressed; // created onPressed function for the quiz to reset
  final List<String> chosenAnswers;
  


   List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct_answer' :questions[i].answers[0],
          'user_answer': chosenAnswers[i],
        },
      );
    }

    return summary;
  }  
  @override
  Widget build(BuildContext context){
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    int numCorrectQuestions = 0;
    for( var i = 0; i < summaryData.length; i++){
      if(summaryData[i]['user_answer'] == summaryData[i]['correct_answer']) {
        numCorrectQuestions++;
      }
    }

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: SingleChildScrollView(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Text(
              'You answered $numCorrectQuestions out of $numTotalQuestions questions Correctly',
              style: GoogleFonts.lato(
                color: Colors.white, 
                fontSize: 20,
                fontWeight: FontWeight.bold,
                ),
              ),
            const SizedBox(height:30),
            QuestionsSummary(summaryData: getSummaryData()),
            const SizedBox(height:30),
            TextButton(
              onPressed: onPressed,
              child: const Text('Restart Quiz'),
            )
          ],
        ),
      ),
      ),
    );
  }
}

// homework: go through scoring in quiz app slides (results screen)
// get the part on how to do the numbers
// for each thing, design it so questions_summary looks nice
// make a function in TextButton within onpressed to start the quiz again
