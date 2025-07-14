import 'package:flutter/material.dart';
import 'package:mobile_task/features/user/data/models/user_model/user_model.dart';
import 'package:mobile_task/features/user/presentations/views/widgets/user_card.dart';

class UserListView extends StatelessWidget {
  final List<UserModel> users;

  const UserListView({super.key, required this.users});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        final user = users[index];
        return UserCard(user: user);
      },
    );
  }
}
