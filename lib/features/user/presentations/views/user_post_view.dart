import 'package:flutter/material.dart';
import 'package:mobile_task/features/user/presentations/views/widgets/custom_app_bar.dart';
import 'package:mobile_task/features/user/presentations/views/widgets/user_post_body.dart';

class UserPostView extends StatelessWidget {
  final int userId;

  const UserPostView({super.key, required this.userId});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(title: 'User $userId Posts'),
        body: UserPostBody(userId: userId),
      ),
    );
  }
}
