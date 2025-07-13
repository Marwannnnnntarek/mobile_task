import 'package:flutter/material.dart';
import 'package:mobile_task/features/user/presentations/views/widgets/user_post_body.dart';

class UserPostView extends StatelessWidget {
  const UserPostView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("User Posts")),
        body: UserPostBody(),
      ),
    );
  }
}
