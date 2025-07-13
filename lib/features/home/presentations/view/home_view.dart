import 'package:flutter/material.dart';
import 'package:mobile_task/features/home/presentations/view/post_view.dart';
import 'package:mobile_task/features/home/presentations/view/user_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Center(child: Text('Home')),
            bottom: TabBar(tabs: [Tab(text: 'Users'), Tab(text: 'Posts')]),
          ),
          body: TabBarView(children: [UserView(), PostView()]),
        ),
      ),
    );
  }
}
