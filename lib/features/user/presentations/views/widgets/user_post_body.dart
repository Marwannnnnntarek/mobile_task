import 'package:flutter/material.dart';
import 'package:mobile_task/core/widgets/custom_list_view.dart';

class UserPostBody extends StatelessWidget {
  const UserPostBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomListView(title: 'Title', subTitle: 'Body', itemCount: 10);
  }
}
