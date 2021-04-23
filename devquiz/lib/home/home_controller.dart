import 'package:DevQuiz/home/home_repositoey.dart';
import 'package:DevQuiz/home/home_state.dart';
import 'package:DevQuiz/shared/model/quiz_model.dart';
import 'package:DevQuiz/shared/model/user_model.dart';
import 'package:flutter/foundation.dart';

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;

  final repository = HomeRepository();

  void getUser() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));

    user = await repository.getUser();
    state = HomeState.sucesso;
  }

  void getQuizzes() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));

    quizzes = await repository.getQuizzes();
    state = HomeState.sucesso;
  }
}
