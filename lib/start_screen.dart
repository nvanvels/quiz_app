import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child:  Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
             width: 300,
             color: Color.fromARGB(155, 255, 255, 255), // change color of the image
             ),
          const SizedBox(height:80),
          const Text(
            "Challenge yourself",
            style: TextStyle(
              color: Colors.white, fontSize: 24),
            ),
            const SizedBox(height:30),
            OutlinedButton.icon(  //icon allows for icons to be added to the app.
              onPressed: () {},
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white), 
              icon: Icon(Icons.arrow_right_alt),
              label:const Text("Start Quiz"),
              ),
        ],
        ),
    );
  }
  // when changing screen, must wrap the screen in a widget and tell that widget what to change
  // HOMEWORK: Make a quiz widget (stateful). Make it load in main. Instead of startscreen, load quiz in main and inside of quiz, load startscreen.
  // quiz.dart stateful widget in main
  // StartScreen() in quiz.dart

  // questionScreen.dart should be stateful. Will change the question
}