import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_task/core/widgets/custom_list_tile.dart';
import 'package:mobile_task/core/widgets/custom_loading_indicator.dart';
import 'package:mobile_task/features/post/presentations/view_model/post/post_cubit.dart';

class PostBody extends StatelessWidget {
  const PostBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostCubit, PostState>(
      builder: (context, state) {
        if (state is PostSuccess) {
          return ListView.builder(
            itemCount: state.posts.length,
            itemBuilder: (context, index) {
              final post = state.posts[index];
              return Card(
                child: CustomListTile(
                  title: post.title ?? 'No Title',
                  subTitle: post.body ?? 'No Body',
                ),
              );
            },
          );
        } else if (state is PostFailure) {
          return Center(child: Text(state.errMessage));
        } else if (state is PostLoading) {
          return const Center(child: CustomLoadingIndicator());
        }
        return const SizedBox.shrink();
      },
    );
  }
}
