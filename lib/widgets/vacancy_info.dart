import 'package:flutter/material.dart';
import 'package:vacancy_app/models/vacancy_model/vacancy_model.dart';
import 'package:vacancy_app/widgets/custom_divider.dart';
import 'package:vacancy_app/widgets/vacancy_info_item.dart';

class VacancyInfo extends StatelessWidget {
  const VacancyInfo({
    super.key,
    required this.vacancyModel,
  });

  final VacancyModel vacancyModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        VacancyInfoItem(
          title: "Job ID",
          value: vacancyModel.jobId!,
        ),
        const CustomDivider(),
        VacancyInfoItem(
          title: "Job Location",
          value: vacancyModel.location!,
        ),
        const CustomDivider(),
        VacancyInfoItem(
          title: "Job salary",
          value: vacancyModel.salary!,
        ),
        const CustomDivider(),
        VacancyInfoItem(
          title: "Job Description",
          value: vacancyModel.description!,
        ),
        const CustomDivider(),
        VacancyInfoItem(
          title: "Job long Description",
          value: vacancyModel.longDescription!,
        ),
      ],
    );
  }
}
