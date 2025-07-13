import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_task/core/helpers/app_routes.dart';

class UserView extends StatelessWidget {
  const UserView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text('Name'),
            subtitle: Text('User Name'),
            onTap: () {
              context.push(AppRoutes.userPost);
            },
          ),
        );
      },
    );
  }
}
