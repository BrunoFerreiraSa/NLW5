import 'package:DevQuiz/challenge/widget/awnser/awnser_widget.dart';
import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/shared/model/awnser_model.dart';
import 'package:DevQuiz/shared/model/question_model.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatefulWidget {
  final QuestionModel question;
  final ValueChanged<bool> onSelected;

  QuizWidget({
    Key? key,
    required this.question,
    required this.onSelected,
  }) : super(key: key);

  @override
  _QuizWidgetState createState() => _QuizWidgetState();
}

class _QuizWidgetState extends State<QuizWidget> {
  int indexSelected = -1;

  AwnserModel awnser(int index) => widget.question.awnsers[index];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 64),
          Text(widget.question.title, style: AppTextStyles.heading),
          SizedBox(height: 24),
          for (int i = 0; i < widget.question.awnsers.length; i++)
            AwnserWidget(
              anwser: awnser(i),
              disabled: indexSelected != -1,
              isSelected: indexSelected == i,
              onTap: (value) {
                indexSelected = i;
                setState(() {});
                Future.delayed(Duration(seconds: 1))
                    .then((_) => widget.onSelected(value));
              },
            ),
        ],
      ),
    );
  }
}
