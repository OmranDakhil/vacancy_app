class VacancyState {}

final class VacancyInitial extends VacancyState {}

final class VacancyLoadedState extends VacancyState {}

final class VacancyLoadingState extends VacancyState {}

final class VacancyErrorState extends VacancyState {
  final String errMsg;

  VacancyErrorState({required this.errMsg});
}
