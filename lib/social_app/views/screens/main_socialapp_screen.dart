// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_4/social_app/views/screens/all_posts.dart';
import 'package:flutter_application_4/social_app/views/screens/favourite_screen.dart';

import '../../data/dummy_dataa.dart';
import '../../models/post_models.dart';

class MainSocialAppScreen extends StatefulWidget {
  @override
  State<MainSocialAppScreen> createState() => _MainSocialAppScreenState();
}

class _MainSocialAppScreenState extends State<MainSocialAppScreen>
    with SingleTickerProviderStateMixin {
  checkisFavourite(PostModel postModel) {
    int index = posts.indexOf(postModel);
    posts[index].isFavourite = !posts[index].isFavourite;
    setState(() {});
  }

  late TabController tabController;
  // PageController pg = PageController();
  int currentIndex = 0;
  initializeTabController() {
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initializeTabController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Social media app'),
      ),
      // or use pageView without changing the class to sttful
      body: TabBarView(controller: tabController, children: [
        AllPosts(checkisFavourite),
        LikedPostsScreen(checkisFavourite),
      ]),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            currentIndex = index;
            setState(() {});
            // pg.animateToPage(index,Duration())
            tabController.animateTo(index);
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'Favourite'),
          ]),
    );
  }
}
