import 'package:flutter/material.dart';
import 'package:mobile_task/features/post/data/models/post_model/post_model.dart';
import 'package:mobile_task/features/post/presentations/views/widgets/post_card.dart';

class PostListView extends StatelessWidget {
  const PostListView({super.key, required this.posts});
  final List<PostModel> posts;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: (context, index) {
        final post = posts[index];
        return PostCard(post: post);
      },
    );
  }
}
