// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/social_app/models/post_models.dart';

import '../../../statefull_lecture/stateful_screen.dart';

class postWidget extends StatelessWidget {
  PostModel postModel;
  Function function;
  postWidget(this.postModel, this.function);

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

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: EdgeInsets.all(10),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                postModel.postUserModel!.image.toString(),
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
                  Text(postModel.postUserModel!.name.toString()),
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
            // CupertinoSwitch(
            //     value: isDark,
            //     onChanged: (value) {
            //       isDark = value;
            //       // setState(() {}
            //       );
            //     })
          ],
        ),
      ),
      Container(
        height: 400,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(postModel.image.toString()),
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
                function(this.postModel);
              },
              child: Icon(
                Icons.favorite,
                size: 30,
                color: postModel.isFavourite ? Colors.red : Colors.grey,
              ),
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Text(postModel.content.toString()),
      ),
      Divider(
        thickness: 3,
      ),
    ]);
  }
}
