import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_task/core/helpers/app_routes.dart';
import 'package:mobile_task/core/widgets/custom_list_view.dart';

class UsersBody extends StatelessWidget {
  const UsersBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomListView(
      title: 'Name',
      subTitle: 'User Name',
      itemCount: 10,
      onTap: () => context.push(AppRoutes.userPost),
    );
  }
}
