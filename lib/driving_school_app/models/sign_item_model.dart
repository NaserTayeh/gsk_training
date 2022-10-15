import 'package:flutter/material.dart';

class SignItemModel {
  String groupTitle;
  AssetImage groupImg;
  AssetImage img;
  String signTitle;
  bool learned;
  int groupNum;

  SignItemModel({
    required this.groupNum,
    required this.groupImg,
    required this.groupTitle,
    required this.img,
    required this.signTitle,
    required this.learned,
  });
}
