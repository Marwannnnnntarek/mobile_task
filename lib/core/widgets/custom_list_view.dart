import 'package:flutter/material.dart';
import 'package:mobile_task/core/widgets/custom_list_tile.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({
    super.key,
    required this.title,
    required this.subTitle,
    required this.itemCount,
    this.onTap,
  });
  final String title, subTitle;
  final int itemCount;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount,
      itemBuilder: (context, index) {
        return Card(
          child: CustomListTile(title: title, subTitle: subTitle, onTap: onTap),
        );
      },
    );
  }
}
