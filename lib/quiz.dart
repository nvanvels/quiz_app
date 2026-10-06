import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';

class QuizScreen extends StatefulWidget {
  
  @override
  State<StatefulWidget> createState() {

      return _QuizState();
  }
 
}
 class _QuizState extends State<QuizScreen>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return StartScreen();
  }

  }