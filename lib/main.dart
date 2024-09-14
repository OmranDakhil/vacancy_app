import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vacancy_app/cubit/vacancy_cubit.dart';
import 'package:vacancy_app/views/vacancy_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'vacancy app',
      home: BlocProvider(
        create: (context) => VacancyCubit()..getVacancies(),
        child: const VacancyList(),
      ),
    );
  }
}
