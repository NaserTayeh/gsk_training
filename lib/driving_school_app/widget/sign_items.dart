// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, sort_child_properties_last, avoid_unnecessary_containers

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/driving_school_app/models/sign_item_model.dart';

class SignItems extends StatelessWidget {
  SignItemModel signItemModel;
  SignItems(this.signItemModel);
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      signItemModel.groupTitle,
                      style: TextStyle(
                          color: Color.fromARGB(255, 3, 3, 3),
                          fontFamily: "OpenSans",
                          fontSize: 20),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    CircleAvatar(
                      backgroundImage: signItemModel.groupImg,
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
                child: ListTile(
                  leading: Container(
                    height: 50,
                    width: 70,
                    child: CircleAvatar(
                      backgroundImage: signItemModel.img,
                    ),
                  ),
                  title: Container(
                      margin: EdgeInsets.fromLTRB(70, 0, 0, 0),
                      child: Text(
                        signItemModel.signTitle,
                        style: TextStyle(fontFamily: "OpenSans", fontSize: 14),
                      )),
                  trailing: Checkbox(
                      activeColor: Color.fromARGB(255, 254, 246, 219),
                      checkColor: Color.fromARGB(255, 89, 82, 54),
                      hoverColor: Color.fromARGB(255, 254, 246, 219),
                      value: signItemModel.learned,
                      onChanged: (v) {}),
                ),
              ),
              Divider(
                thickness: 2,
              )
            ],
          ),
        ),
      ),
    );
  }
}
