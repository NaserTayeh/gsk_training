import 'package:flutter/cupertino.dart';
import 'package:flutter_application_4/social_app/models/post_models.dart';
import 'package:flutter_application_4/social_app/views/widget/post_widget.dart';

import '../../data/dummy_dataa.dart';

class AllPosts extends StatelessWidget {
  Function function;
  AllPosts(this.function);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: (context, index) {
        return postWidget(posts[index], function);
      },
    );
  }
}
