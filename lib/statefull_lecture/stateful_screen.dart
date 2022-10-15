// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, must_be_immutable, duplicate_import, unnecessary_import

import 'dart:developer';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyPostScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyPostScreenState();
  }
}

class MyPostScreenState extends State<MyPostScreen> {
  bool isLiked = false;
  IconData icon = Icons.thumb_up;
  bool flag = true;
  bool isDark = false;
  Color screenColor = Colors.white;
  darkMode() {
    if (isDark) {
      screenColor = Colors.white;
    } else {
      screenColor = Colors.grey;
    }
  }

  String content = "";
  List<String> comment = [];

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: isDark ? ThemeData.dark() : ThemeData.light(),
      child: Scaffold(
        // backgroundColor: screenColor,
        appBar: AppBar(
          // backgroundColor: Colors.orange,
          // leading: CupertinoSwitch(value: isDark, onChanged: (x) {}),
          title: Text('MyPost'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(
                        'images/img5.jpg',
                      ),
                      radius: 40,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Naser Tayeh'),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            'Since 1 hour ago.',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    // Platform.isAndroid
                    CupertinoSwitch(
                        value: isDark,
                        onChanged: (value) {
                          isDark = value;
                          setState(() {});
                        })
                  ],
                ),
              ),
              Container(
                height: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/img4.webp'),
                        fit: BoxFit.cover)),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Icon(
                      Icons.share,
                      size: 30,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                        onTap: () {
                          isLiked = !isLiked;
                          print('is Liked Var is $isLiked');
                          setState(
                              () {}); // every time it executed it excute the build method
                        },
                        child: IsLikedButton()),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        flag = !flag;
                        if (flag == true) {
                          icon = Icons.thumb_down;
                        } else {
                          icon = Icons.thumb_up;
                        }

                        setState(() {});
                      },
                      child: Icon(
                        icon,
                        color: Colors.blue,
                        size: 30,
                      ),
                    )
                  ],
                ),
              ),
              Text('Hello , this is my first post'),
              AcceptConfition(),
              SizedBox(height: 10),
              Text("Add comment"),
              SizedBox(
                height: 5,
              ),
              Container(
                margin: EdgeInsets.all(5),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        onChanged: (value) {
                          content = value;
                          // log(value);
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        if (content != '') comment.add(content);

                        content = '';
                        setState(() {});
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue,
                        ),
                        padding: EdgeInsets.all(15),
                        child: Icon(Icons.send),
                      ),
                    ),
                  ],
                ),
              ),
              ...comment.map((e) {
                return Text(e);
              }).toList(),
            ],
          ),
        ),
      ),
    );
  }
}

class IsLikedButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return IsLikedButtonState();
  }
}

class IsLikedButtonState extends State<IsLikedButton> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.favorite,
      color: isLiked ? Colors.red : Colors.grey,
      size: 30,
    );
  }
}

class AcceptConfition extends StatefulWidget {
  @override
  State<AcceptConfition> createState() => _AcceptConfitionState();
}

class _AcceptConfitionState extends State<AcceptConfition> {
  bool isAccepted = false;
  bool isSwitched = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
        children: [
          Switch(
              value: isSwitched,
              onChanged: (v) {
                isSwitched = v;
                setState(() {});
              }),
          Checkbox(
              value: isAccepted,
              onChanged: (value) {
                isAccepted = value!;
                setState(() {});
              }),
          SizedBox(
            width: 10,
          ),
          Text('Accept Condition '),
        ],
      ),
    );
  }
}
