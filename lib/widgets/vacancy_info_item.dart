import 'package:flutter/material.dart';

import '../utils/text_styles.dart';

class VacancyInfoItem extends StatelessWidget {
  const VacancyInfoItem({
    super.key,
    required this.title,
    required this.value,
  });

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyles.bold14.copyWith(color: const Color(0xff150B3D)),
        ),
        const SizedBox(height: 5),
        Text(
          value,
          style: TextStyles.regular12.copyWith(color: const Color(0xff524B6B)),
        )
      ],
    );
  }
}
