// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_application_4/driving_school_app/main_diving_screen.dart';
import 'package:flutter_application_4/driving_school_app/views/photocell_items_screen.dart';
import 'package:flutter_application_4/driving_school_app/views/query_items_screen.dart';
import 'package:flutter_application_4/driving_school_app/views/road_items_screen.dart';
import 'package:flutter_application_4/driving_school_app/views/warning_items_screen.dart';
import 'package:flutter_application_4/driving_school_app/widget/sign_items.dart';
import 'package:flutter_application_4/ecommerce_app/views/ecommerce_main_screen.dart';
import 'package:flutter_application_4/social_app/mainSocial.dart';
import 'package:flutter_application_4/social_app/views/screens/main_socialapp_screen.dart';

import 'statefull_lecture/stateful_screen.dart';
import 'task_managment/main_tasks_screen.dart';

void main() {
  runApp(MaterialApp(
    home:
        //  ass MainDrivingScreen(),

        // WariningItemsScreen(),

        // ass routes: {
        //   WariningItemsScreen.screenRoute: (context) => WariningItemsScreen(),
        //   RoadItemsScreen.screenRoute: (context) => RoadItemsScreen(),
        //   PhotoCellScreen.screenRoute: (context) => PhotoCellScreen(),
        //   QueryItemsScreen.screenRoute: (context) => QueryItemsScreen(),
        // },
        MainSocialAppScreen(),
    // SignItems(),
    // MainTaskScreen(),
    // MyPostScreen(),
  ));
}
