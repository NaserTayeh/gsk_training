import 'package:flutter/material.dart';

class SignsModel {
  AssetImage img;
  String signTitle;
  int signNumber;
  Color color;
  SignsModel(
      {required this.img,
      required this.signTitle,
      required this.signNumber,
      required this.color});
}
