import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vacancy_app/models/vacancy_model/vacancy_model.dart';

import 'package:vacancy_app/widgets/vacancy_details_header.dart';
import 'package:vacancy_app/widgets/vacancy_info.dart';

class VacancyDetails extends StatelessWidget {
  final VacancyModel vacancyModel;
  const VacancyDetails({super.key, required this.vacancyModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      body: SafeArea(
        child: ListView(
          children: [
            const SizedBox(height: 15),
            Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  )),
            ),
            const SizedBox(height: 15),
            VacancyDetailsHeader(vacancyModel: vacancyModel),
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: VacancyInfo(vacancyModel: vacancyModel),
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
