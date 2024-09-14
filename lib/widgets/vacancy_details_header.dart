import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:vacancy_app/models/vacancy_model/vacancy_model.dart';
import 'package:vacancy_app/utils/text_styles.dart';

class VacancyDetailsHeader extends StatelessWidget {
  const VacancyDetailsHeader({
    super.key,
    required this.vacancyModel,
  });

  final VacancyModel vacancyModel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          color: Colors.grey.shade200,
          child: Column(
            children: [
              const SizedBox(
                height: 35,
              ),
              Text(
                vacancyModel.title!,
                style: TextStyles.bold16,
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    vacancyModel.company!,
                    style: TextStyles.regular14,
                  ),
                  Text(
                    vacancyModel.datePosted!,
                    style: TextStyles.regular14,
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        Positioned(
          top: -65,
          right: MediaQuery.sizeOf(context).width / 2 - 45,
          child: SizedBox(
            height: 90,
            width: 90,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(45),
              child: FancyShimmerImage(
                imageUrl: vacancyModel.imageUrl ?? "",
                errorWidget: const Icon(
                  Icons.close,
                  color: Colors.red,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
