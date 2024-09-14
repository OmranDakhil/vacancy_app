import 'package:dio/dio.dart';
import 'package:vacancy_app/models/vacancy_model/vacancy_model.dart';

class ApiService {
  Dio dio = Dio();

  String baseUrl = "https://www.unhcrjo.org/jobs/api";
  Future getVacancies() async {
    try {
      var response = await Dio().get(baseUrl);
      return response.data
          .map<VacancyModel>((model) => VacancyModel.fromJson(model))
          .toList();
    } catch (e) {
      rethrow;
    }
  }
}
