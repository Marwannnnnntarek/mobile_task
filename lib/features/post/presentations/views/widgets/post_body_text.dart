import 'package:flutter/material.dart';

class PostBodyText extends StatelessWidget {
  const PostBodyText({super.key, required this.body, required this.isExpanded});

  final String? body;
  final bool isExpanded;

  @override
  Widget build(BuildContext context) {
    final fontSize = MediaQuery.of(context).size.width * 0.04;

    return Text(
      body ?? 'No Body',
      maxLines: isExpanded ? null : 2,
      overflow: isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
      style: TextStyle(fontSize: fontSize, color: Colors.grey[600]),
    );
  }
}
