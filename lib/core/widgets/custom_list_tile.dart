import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    this.onTap,
    required this.title,
    required this.subTitle,
  });
  final String title, subTitle;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(title),
        subtitle: Text(subTitle),
        onTap: onTap,
      ),
    );
  }
}
