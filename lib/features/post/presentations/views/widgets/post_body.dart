import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_task/core/widgets/custom_loading_indicator.dart';
import 'package:mobile_task/features/post/presentations/view_model/post/post_cubit.dart';
import 'package:mobile_task/features/post/presentations/views/widgets/post_list_view.dart';

class PostBody extends StatelessWidget {
  const PostBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostCubit, PostState>(
      builder: (context, state) {
        if (state is PostSuccess) {
          return PostListView(posts: state.posts);
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
