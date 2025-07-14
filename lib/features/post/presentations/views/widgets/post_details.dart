import 'package:flutter/material.dart';
import 'package:mobile_task/features/post/data/models/post_model/post_model.dart';
import 'package:mobile_task/features/post/presentations/views/widgets/info_row.dart';

class PostDetails extends StatelessWidget {
  const PostDetails({super.key, required this.post});
  final PostModel post;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 12),
        InfoRow(label: 'Post ID:', value: post.id?.toString()),
        InfoRow(label: 'User ID:', value: post.userId?.toString()),
      ],
    );
  }
}
