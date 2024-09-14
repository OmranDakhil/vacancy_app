import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:vacancy_app/cubit/vacancy_cubit.dart';
import 'package:vacancy_app/cubit/vacancy_state.dart';
import 'package:vacancy_app/utils/functions.dart';
import 'package:vacancy_app/widgets/nav_bar_widget.dart';
import 'package:vacancy_app/widgets/vacancy_item.dart';

class VacancyList extends StatelessWidget {
  const VacancyList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const NavBarWidget(),
      backgroundColor: Colors.grey.shade100,
      body: BlocConsumer<VacancyCubit, VacancyState>(
        listener: (context, state) {
          if (state is VacancyErrorState) {
            showErrorDialog(context, state);
          }
        },
        builder: (context, state) {
          return Skeletonizer(
              enabled: state is VacancyLoadedState ? false : true,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 15,
                    );
                  },
                  itemCount: context.read<VacancyCubit>().vacancies.length,
                  itemBuilder: (context, index) {
                    return VacancyItem(
                      vacancyModel:
                          context.read<VacancyCubit>().vacancies[index],
                    );
                  },
                ),
              ));
        },
      ),
    );
  }
}
