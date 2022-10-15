// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/driving_school_app/data/dummy_driving_data.dart';
import 'package:flutter_application_4/driving_school_app/widget/BorderBox.dart';

import '../widget/sign_items.dart';

class QueryItemsScreen extends StatefulWidget {
  static const screenRoute = '/query_items';

  @override
  State<QueryItemsScreen> createState() => _QueryItemsScreenState();
}

class _QueryItemsScreenState extends State<QueryItemsScreen> {
  void returnScreen(BuildContext context) {
    Navigator.of(context).pushNamed('/');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 232, 237, 219),
        body: Container(
          child: Column(
            children: [
              Container(
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        returnScreen(context);
                      },
                      child: BorderBox(
                          width: 40,
                          height: 40,
                          child: Icon(Icons.arrow_back),
                          marginLeft: 0,
                          marginRight: 80,
                          marginTop: 0,
                          marginbottom: 0),
                    ),
                    Text(
                      sign_items
                          .where((element) => element.groupNum == 1)
                          .toList()[0]
                          .groupTitle,
                      style: TextStyle(
                          color: Color.fromARGB(255, 3, 3, 3),
                          fontFamily: "OpenSans",
                          fontSize: 20),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    CircleAvatar(
                      backgroundImage: sign_items
                          .where((element) => element.groupNum == 1)
                          .toList()[0]
                          .groupImg,
                    ),
                  ],
                ),
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: Colors.white,
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 15),
                  child: SizedBox(
                    height: 700,
                    child: ListView.builder(
                      itemCount: sign_items
                          .where((element) => element.groupNum == 1)
                          .length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            ListTile(
                              leading: Container(
                                height: 50,
                                width: 70,
                                child: CircleAvatar(
                                  backgroundImage: sign_items
                                      .where((element) => element.groupNum == 1)
                                      .toList()[index]
                                      .img,
                                ),
                              ),
                              title: Container(
                                  margin: EdgeInsets.fromLTRB(70, 0, 0, 0),
                                  child: Text(
                                    sign_items
                                        .where(
                                            (element) => element.groupNum == 1)
                                        .toList()[index]
                                        .signTitle,
                                    style: TextStyle(
                                        fontFamily: "OpenSans", fontSize: 14),
                                  )),
                              trailing: Checkbox(
                                  activeColor:
                                      Color.fromARGB(255, 254, 246, 219),
                                  checkColor: Color.fromARGB(255, 89, 82, 54),
                                  hoverColor:
                                      Color.fromARGB(255, 254, 246, 219),
                                  value: sign_items
                                      .where((element) => element.groupNum == 1)
                                      .toList()[index]
                                      .learned,
                                  onChanged: (v) {
                                    sign_items
                                        .where(
                                            (element) => element.groupNum == 1)
                                        .toList()[index]
                                        .learned = v!;
                                    setState(() {});
                                  }),
                            ),
                            Divider(
                              thickness: 2,
                            )
                          ],
                        );
                      },
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
