import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vacancy_app/cubit/vacancy_cubit.dart';
import 'package:vacancy_app/cubit/vacancy_state.dart';

showErrorDialog(BuildContext context, VacancyErrorState state) {
  return showDialog(
    context: context,
    barrierDismissible: false, // Prevents user from clicking outside
    builder: (_) {
      return AlertDialog(
        content: Text(state.errMsg),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              // Implement retry logic here
              Navigator.of(context).pop();
              context.read<VacancyCubit>().getVacancies(); // Close the dialog
            },
            child: const Text('Retry'),
          ),
        ],
      );
    },
  );
}
