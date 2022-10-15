// ignore_for_file: prefer_const_constructors, must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/task_managment/models/task_model.dart';

class TaskWidget extends StatelessWidget {
  TaskModel taskModel;
  Function? function;
  TaskWidget(this.taskModel, this.function);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CheckboxListTile(
          activeColor: Colors.green.withOpacity(.2),
          checkColor: Colors.black,
          value: taskModel.isComplete,
          onChanged: (value) {
            function!(taskModel);
            // taskModel.isComplete = !taskModel.isComplete;
          },
          title: Text(
            taskModel.name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Divider(
          thickness: 2,
        )
      ],
    );
  }
}
