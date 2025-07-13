import 'package:flutter/material.dart';
import 'package:mobile_task/features/user/presentations/views/widgets/user_post_body.dart';

class UserPostView extends StatelessWidget {
  const UserPostView({super.key, required this.userId});
  final int userId;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("User Posts")),
        body: UserPostBody(userId: userId),
      ),
    );
  }
}
