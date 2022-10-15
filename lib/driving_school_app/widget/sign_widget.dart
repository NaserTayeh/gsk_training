// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_4/driving_school_app/data/dummy_driving_data.dart';
import 'package:flutter_application_4/driving_school_app/models/signs_model.dart';

import '../widget/BorderBox.dart';

class SignWidget extends StatelessWidget {
  SignsModel signModel;
  int index;

  checkLearned(int index) {
    int counter = 0;
    List temp =
        sign_items.where((element) => element.groupNum == index).toList();
    for (var i = 0; i < temp.length; i++) {
      if (temp[i].learned) {
        counter++;
      }
    }
    if (counter == temp.length) return Colors.green;

    return Colors.grey;
  }

  SignWidget(this.signModel, this.index);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310,
      height: 132,
      decoration: BoxDecoration(
        color: signModel.color,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(80, 0, 0, 0),
                height: 90,
                width: 150,
                // margin: EdgeInsets.only(left: 40, top: 1),
                child: Image(image: signModel.img),
              ),
              BorderBox(
                marginTop: 10,
                marginbottom: 0,
                marginLeft: 5,
                marginRight: 10,
                color: checkLearned(index),
                height: 30,
                width: 30,
                child: Icon(
                  Icons.check,
                  size: 25,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(95, 0, 0, 13),
                child: Text(
                  signModel.signTitle,
                  style: TextStyle(
                      fontFamily: "OpenSans-Light",
                      fontSize: 20,
                      color: Colors.black),
                ),
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(5, 20, 0, 2),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Text(
                      signModel.signNumber.toString() + " sign",
                      softWrap: true,
                      style: TextStyle(
                          color: Color.fromARGB(255, 138, 138, 138),
                          fontFamily: 'OpenSans'),
                    ),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
