// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BorderBox extends StatelessWidget {
  final Widget child;
  // final EdgeInsets padding;
  final double width, height;
  final double marginLeft, marginRight, marginTop, marginbottom;
  Color color;
  BorderBox({
    // {required this.padding,
    this.color = Colors.white,
    required this.width,
    required this.height,
    required this.child,
    required this.marginLeft,
    required this.marginRight,
    required this.marginTop,
    required this.marginbottom,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.fromLTRB(marginLeft, marginTop, marginRight, marginbottom),
      // padding: const EdgeInsets.all(8),
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(50),
        border: Border.all(color: Colors.grey.withAlpha(40), width: 2),
      ),
      child: Center(
          child: Center(
        child: child,
      )),
    );
  }
}
