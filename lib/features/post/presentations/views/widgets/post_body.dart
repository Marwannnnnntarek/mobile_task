import 'package:flutter/material.dart';
import 'package:mobile_task/core/widgets/custom_list_view.dart';

class PostBody extends StatelessWidget {
  const PostBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomListView(title: 'Title', subTitle: 'Body', itemCount: 10);
  }
}
