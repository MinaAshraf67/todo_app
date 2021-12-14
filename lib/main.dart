import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:todo_app_practice/shared/bloc_observer.dart';

import 'layouts/home_layout.dart';

void main() {
  BlocOverrides.runZoned(
    () {
      runApp(const MyApp());
    },
    blocObserver: MyBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeLayout(),
      debugShowCheckedModeBanner: false,
    );
  }
}
