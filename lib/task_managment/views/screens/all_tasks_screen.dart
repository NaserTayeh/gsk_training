import 'package:flutter/cupertino.dart';
import 'package:flutter_application_4/task_managment/data/dummy_data.dart';
import 'package:flutter_application_4/task_managment/views/widget/tasks_widget.dart';

import '../../models/task_model.dart';

class AllTasksScreen extends StatelessWidget {
  Function function;
  AllTasksScreen(this.function);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return TaskWidget(tasks[index], function);
        });
  }
}
