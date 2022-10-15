// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, curly_braces_in_flow_control_structures

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/driving_school_app/views/photocell_items_screen.dart';
import 'package:flutter_application_4/driving_school_app/views/query_items_screen.dart';
import 'package:flutter_application_4/driving_school_app/views/road_items_screen.dart';
import 'package:flutter_application_4/driving_school_app/views/warning_items_screen.dart';
import 'package:flutter_application_4/driving_school_app/widget/BorderBox.dart';

import 'data/dummy_driving_data.dart';
import 'widget/sign_widget.dart';

class MainDrivingScreen extends StatelessWidget {
  void selectScreen(BuildContext ctx, int index) {
    if (index == 0)
      Navigator.of(ctx).pushNamed(WariningItemsScreen.screenRoute);
    else if (index == 1)
      Navigator.of(ctx).pushNamed(QueryItemsScreen.screenRoute);
    else if (index == 2)
      Navigator.of(ctx).pushNamed(PhotoCellScreen.screenRoute);
    else if (index == 3)
      Navigator.of(ctx).pushNamed(RoadItemsScreen.screenRoute);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 232, 237, 219),
        body: Container(
          margin: EdgeInsets.only(top: 15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BorderBox(
                      marginTop: 0,
                      marginbottom: 0,
                      marginLeft: 10,
                      marginRight: 10,
                      width: 30,
                      height: 30,
                      child: Icon(
                        Icons.menu,
                        size: 10,
                      )),
                  BorderBox(
                      marginTop: 0,
                      marginbottom: 0,
                      marginLeft: 10,
                      marginRight: 10,
                      width: 30,
                      height: 30,
                      child: Icon(
                        Icons.menu,
                        size: 10,
                      )),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 166,
                width: 350,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 254, 246, 219),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                          Text('OCT',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 89, 82, 54),
                                  fontFamily: "OpenSans",
                                  fontSize: 32)),
                          Text(
                            '18',
                            style: TextStyle(
                                fontFamily: "OpenSans-semiBold",
                                fontWeight: FontWeight.bold,
                                fontSize: 80,
                                color: Color.fromARGB(255, 89, 82, 54)),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 15, top: 8),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(8, 5, 5, 5),
                            width: 190,
                            height: 30,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 121, 129, 84),
                                borderRadius: BorderRadius.circular(15)),
                            child: Text(
                              'NT driving school',
                              style: TextStyle(
                                  fontFamily: "OpenSans-semiBold",
                                  color: Color.fromARGB(255, 254, 246, 219)),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 68,
                            width: 200,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 3,
                                  color: Color.fromARGB(255, 121, 129, 84)),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 8, 5, 5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Location',
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 89, 82, 54),
                                        fontFamily: "OpenSans-semiBold"),
                                  ),
                                  Text(
                                    'Nablus',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 121, 129, 84),
                                        fontFamily: "OpenSans-semiBold"),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(8, 5, 5, 5),
                            width: 190,
                            height: 30,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 247, 238, 71),
                                borderRadius: BorderRadius.circular(15)),
                            child: Text(
                              'Happy Hour',
                              style: TextStyle(
                                  fontFamily: "OpenSans-semiBold",
                                  color: Color.fromARGB(255, 89, 82, 54)),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Text(
                ' NT driving school',
                style: TextStyle(
                    fontFamily: "OpenSans-Bold",
                    fontSize: 29,
                    color: Color.fromARGB(255, 89, 82, 54)),
              ),
              Divider(
                thickness: 3,
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 360,
                width: 350,
                child: ListView.builder(
                  itemCount: driving_sign_data.length,
                  itemBuilder: ((context, index) {
                    return InkWell(
                      onTap: () {
                        selectScreen(context, index);
                      },
                      child: Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: SignWidget(driving_sign_data[index], index)),
                    );
                  }),
                ),
              ),
              Expanded(
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          margin: EdgeInsets.only(left: 8),
                          child: Text('Search')),
                      Container(
                          margin: EdgeInsets.only(right: 8),
                          child: Icon(Icons.mic)),
                    ],
                  ),
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  height: 39,
                  width: 335,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                ),
              )
              // SignWidget(
              //     img: AssetImage('images/img6.png'),
              //     signTitle: 'WARNING SIGNS',
              //     signNumber: 26,
              //     color: Colors.white),
            ],
          ),
        ),
      ),
    );
  }
}
