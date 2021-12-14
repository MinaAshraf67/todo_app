import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app_practice/shared/components/components.dart';
import 'package:todo_app_practice/shared/components/constants.dart';
import 'package:todo_app_practice/shared/cubit/cubit.dart';
import 'package:todo_app_practice/shared/cubit/states.dart';

class ArchivedTasksScreen extends StatelessWidget {
  const ArchivedTasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var tasks = AppCubit.get(context).archivedTasks;
        return tasksBuilder(
          tasks: tasks,
        );
      },
    );
  }
}
