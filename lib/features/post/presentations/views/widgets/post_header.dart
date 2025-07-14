import 'package:flutter/material.dart';

class PostHeader extends StatelessWidget {
  const PostHeader({super.key, required this.title});
  final String? title;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final fontSize = width * 0.044;

    return Text(
      title ?? 'No Title',
      style: TextStyle(fontSize: fontSize + 2, fontWeight: FontWeight.bold),
    );
  }
}
