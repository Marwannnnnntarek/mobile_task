import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:mobile_task/features/post/data/models/post_model/post_model.dart';
import 'package:mobile_task/features/post/data/repos/post_repo.dart';

part 'post_state.dart';

class PostCubit extends Cubit<PostState> {
  PostCubit(this.postRepo) : super(PostInitial());
  final PostRepo postRepo;
  Future<void> fetchPosts() async {
    emit(PostLoading());
    final result = await postRepo.fetchPosts();
    result.fold(
      (failure) => emit(PostFailure(failure.errMessage)),
      (posts) => emit(PostSuccess(posts)),
    );
  }

  Future<void> fetchPostsByUserId(int userId) async {
    emit(PostLoading());

    final result = await postRepo.fetchPostsByUserId(userId);

    result.fold(
      (failure) => emit(PostFailure(failure.errMessage)),
      (posts) => emit(PostSuccess(posts)),
    );
  }
}
