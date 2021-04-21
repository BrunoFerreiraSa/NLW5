import 'package:DevQuiz/challenge/widget/awnser/awnser_widget.dart';
import 'package:DevQuiz/core/core.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {
  final String title;

  QuizWidget({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(title, style: AppTextStyles.heading),
          SizedBox(height: 24),
          AwnserWidget(title: "title"),
          AwnserWidget(
            title: "title",
            isRight: true,
            isSelected: true,
          ),
          AwnserWidget(title: "title"),
          AwnserWidget(title: "title"),
        ],
      ),
    );
  }
}
