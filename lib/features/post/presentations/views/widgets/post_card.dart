import 'package:flutter/material.dart';
import 'package:mobile_task/features/post/data/models/post_model/post_model.dart';
import 'package:mobile_task/features/post/presentations/views/widgets/info_row.dart';

class PostCard extends StatefulWidget {
  const PostCard({super.key, required this.post});
  final PostModel post;

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final post = widget.post;
    final width = MediaQuery.of(context).size.width;
    final fontSize = width * 0.04;

    return GestureDetector(
      onTap: () {
        setState(() {
          isExpanded = !isExpanded;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Theme.of(context).cardColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              post.title ?? 'No Title',
              style: TextStyle(
                fontSize: fontSize + 2,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              post.body ?? 'No Body',
              maxLines: isExpanded ? null : 2,
              overflow:
                  isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
              style: TextStyle(fontSize: fontSize, color: Colors.grey[600]),
            ),
            if (isExpanded) const SizedBox(height: 12),
            if (isExpanded) ...[
              InfoRow(label: 'Post ID:', value: post.id?.toString()),
              InfoRow(label: 'User ID:', value: post.userId?.toString()),
            ],
          ],
        ),
      ),
    );
  }
}
