import 'package:flutter/cupertino.dart';
import 'package:flutter_application_4/task_managment/models/task_model.dart';

import '../../data/dummy_data.dart';
import '../widget/tasks_widget.dart';

class InCompleteTasksScreen extends StatelessWidget {
  Function function;
  InCompleteTasksScreen(this.function);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: tasks.where((element) => !element.isComplete).length,
        itemBuilder: (context, index) {
          return TaskWidget(
              tasks.where((element) => !element.isComplete).toList()[index],
              function);
        });
  }
}
