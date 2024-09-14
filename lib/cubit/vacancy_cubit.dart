import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vacancy_app/api/api_service.dart';
import 'package:vacancy_app/cubit/vacancy_state.dart';
import 'package:vacancy_app/models/vacancy_model/vacancy_model.dart';

class VacancyCubit extends Cubit<VacancyState> {
  ApiService apiService = ApiService();
  List<VacancyModel> vacancies = List.generate(
    5,
    (index) {
      return VacancyModel(
          title: "HR Manager",
          company: "People First Inc.",
          datePosted: "2024-09-11",
          description:
              "Oversee HR operations and manage employee relations. Responsibilities include recruiting, training, and developing staff, as well as handling employee grievances and performance reviews.");
    },
  );

  VacancyCubit() : super(VacancyInitial());

  Future<void> getVacancies() async {
    try {
      emit(VacancyLoadingState());
      vacancies = await apiService.getVacancies();
      emit(VacancyLoadedState());
    } catch (e) {
      emit(VacancyErrorState(errMsg: e.toString()));
    }
  }
}
