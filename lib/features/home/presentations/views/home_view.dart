import 'package:flutter/material.dart';
import 'package:mobile_task/features/post/presentations/views/post_view.dart';
import 'package:mobile_task/features/user/presentations/views/users_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            elevation: 4,
            backgroundColor: Theme.of(context).colorScheme.primaryContainer,

            title: const TabBar(
              indicatorColor: Colors.white,
              indicatorWeight: 3,
              labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              tabs: [Tab(text: 'Users'), Tab(text: 'Posts')],
            ),
          ),
          body: const TabBarView(
            physics: BouncingScrollPhysics(),
            children: [UsersView(), PostView()],
          ),
        ),
      ),
    );
  }
}
