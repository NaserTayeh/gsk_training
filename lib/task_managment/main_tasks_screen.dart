// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/task_managment/models/task_model.dart';
import 'package:flutter_application_4/task_managment/views/screens/all_tasks_screen.dart';
import 'package:flutter_application_4/task_managment/views/screens/complete_tasks_screen.dart';
import 'package:flutter_application_4/task_managment/views/screens/incomplete_tasks_screen.dart';

import 'data/dummy_data.dart';

class MainTaskScreen extends StatefulWidget {
  @override
  State<MainTaskScreen> createState() => _MainTaskScreenState();
}

class _MainTaskScreenState extends State<MainTaskScreen>
    with SingleTickerProviderStateMixin {
  checkTask(TaskModel taskModel) {
    int index = tasks.indexOf(taskModel);
    tasks[index].isComplete = !tasks[index].isComplete;
    setState(() {});
  }

  late TabController tabController;

  initializeTabController() {
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void initState() {
    // super.initState();
    initializeTabController();
  }

  @override
  void dispose() {
    // to make the performance better
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            // Container(
            //   height: 200,
            //   color: Colors.blue,
            //   child: Image.asset('images/img1.jpg'),
            // ),
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.green.withOpacity(.2)),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text(
                    'N',
                    style: TextStyle(color: Colors.green),
                  ),
                ),
                accountName:
                    Text('Naser', style: TextStyle(color: Colors.black)),
                accountEmail: Text('nasert@gmail.com',
                    style: TextStyle(color: Colors.black))),
            ListTile(
              title: Text('ALL TASKS'),
              subtitle: Text('go to all tasks page'),
              leading: Icon(Icons.list),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                tabController.animateTo(0);
              },
            ),
            ListTile(
              title: Text('COMPLETE TASKS'),
              subtitle: Text('go to complete tasks page'),
              leading: Icon(Icons.done),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                tabController.animateTo(1);
              },
            ),
            ListTile(
              title: Text('INCOMPLETE TASKS'),
              subtitle: Text('go to incomplete tasks page'),
              leading: Icon(Icons.cancel),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                tabController.animateTo(2);
              },
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.green.withOpacity(.2),
          title: Center(
              child: const Text(
            'Task Managment',
            style: TextStyle(fontStyle: FontStyle.italic, color: Colors.brown),
          )),
          bottom: TabBar(controller: tabController, tabs: [
            Tab(
              text: 'All Tasks',
              icon: Icon(Icons.all_inbox),
            ),
            Tab(
              text: 'Complete Tasks',
              icon: Icon(Icons.done),
            ),
            Tab(
              text: 'Incomplete Tasks',
              icon: Icon(Icons.close),
            ),
          ])),
      body: TabBarView(controller: tabController, children: [
        AllTasksScreen(checkTask),
        CompleteTasksScreen(checkTask),
        InCompleteTasksScreen(checkTask),
        // Center(
        //   child: Text('All tasks'),
        // ),
        // Center(
        //   child: Text('Complete tasks'),
        // ),
        // Center(
        //   child: Text('Incomplete tasks'),
        // ),
      ]),
    );
  }
}
