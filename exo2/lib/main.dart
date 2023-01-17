import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'blocs/next/bloc.dart';
import 'screens/QuizzPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context) => NextBloc(),
      child: MaterialApp(
        title: 'Quizz',
        theme: ThemeData(

          primarySwatch: Colors.blue,
        ),
        home: const QuizzPage(title: 'Questions/Réponses'),
      ),
    );
  }
}
