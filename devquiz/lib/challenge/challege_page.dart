import 'package:DevQuiz/challenge/widget/question_indicator/question_indicator_widget.dart';
import 'package:DevQuiz/challenge/widget/quiz/quiz_widget.dart';
import 'package:flutter/material.dart';

class ChallegePage extends StatefulWidget {
  @override
  _ChallegePageState createState() => _ChallegePageState();
}

class _ChallegePageState extends State<ChallegePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: SafeArea(
          child: QuestionIndicatorWidget(),
        ),
      ),
      body: QuizWidget(
        title: "Teste",
      ),
    );
  }
}
