import 'package:flutter/material.dart';
import 'package:mobile_task/features/post/data/models/post_model/post_model.dart';
import 'package:mobile_task/features/post/presentations/views/widgets/post_body_text.dart';
import 'package:mobile_task/features/post/presentations/views/widgets/post_details.dart';
import 'package:mobile_task/features/post/presentations/views/widgets/post_header.dart';

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

    return GestureDetector(
      onTap: () => setState(() => isExpanded = !isExpanded),
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
            PostHeader(title: post.title),
            const SizedBox(height: 8),
            PostBodyText(body: post.body, isExpanded: isExpanded),
            AnimatedCrossFade(
              firstChild: const SizedBox.shrink(),
              secondChild: PostDetails(post: post),
              crossFadeState:
                  isExpanded
                      ? CrossFadeState.showSecond
                      : CrossFadeState.showFirst,
              duration: const Duration(milliseconds: 300),
            ),
          ],
        ),
      ),
    );
  }
}
