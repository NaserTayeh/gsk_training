import 'package:flutter/cupertino.dart';
import 'package:flutter_application_4/social_app/views/widget/post_widget.dart';

import '../../data/dummy_dataa.dart';

class LikedPostsScreen extends StatelessWidget {
  Function function;
  LikedPostsScreen(this.function);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.where((element) => element.isFavourite).length,
      itemBuilder: (context, index) {
        return postWidget(
            posts.where((element) => element.isFavourite).toList()[index],
            function);
      },
    );
  }
}
