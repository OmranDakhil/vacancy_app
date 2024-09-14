import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:vacancy_app/models/vacancy_model/vacancy_model.dart';
import 'package:vacancy_app/utils/text_styles.dart';
import 'package:vacancy_app/views/vacancy_details.dart';

class VacancyItem extends StatelessWidget {
  final VacancyModel vacancyModel;
  const VacancyItem({super.key, required this.vacancyModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) {
            return VacancyDetails(vacancyModel: vacancyModel);
          },
        ));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
        ),
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50,
                  width: 50,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: FancyShimmerImage(
                      imageUrl: vacancyModel.imageUrl ?? "",
                      errorWidget: const Icon(
                        Icons.close,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
                Text(vacancyModel.datePosted!, style: TextStyles.regular12),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              vacancyModel.title!,
              style: TextStyles.bold14,
            ),
            const SizedBox(height: 4),
            Text(
              vacancyModel.company!,
              style: TextStyles.regular12,
            ),
            const SizedBox(height: 4),
            Text(
              vacancyModel.description!,
              style: TextStyles.regular12.copyWith(
                fontSize: 11,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
