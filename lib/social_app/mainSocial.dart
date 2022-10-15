import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/social_app/data/dummy_dataa.dart';
import 'package:flutter_application_4/social_app/views/widget/post_widget.dart';

class MainSocial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: posts.length,
          itemBuilder: ((context, index) {
            return Container();
            // return postWidget(posts[index],fu);
          })),
    );
  }
}
