import 'package:dartz/dartz.dart';
import 'package:mobile_task/core/helpers/failure.dart';
import 'package:mobile_task/core/services/api_services.dart';
import 'package:mobile_task/features/post/data/models/post_model/post_model.dart';
import 'package:mobile_task/features/post/data/repos/post_repo.dart';

class PostRepoImp implements PostRepo {
  final ApiServices apiServices;

  PostRepoImp(this.apiServices);

  @override
  Future<Either<Failure, List<PostModel>>> fetchPosts() async {
    try {
      final data = await apiServices.get(endPoint: 'posts');

      final posts =
          (data as List)
              .map((json) => PostModel.fromJson(json as Map<String, dynamic>))
              .toList();

      return Right(posts);
    } catch (e) {
      return Left(
        ServerFailure('Something went wrong. Please try again later.'),
      );
    }
  }

  @override
  Future<Either<Failure, List<PostModel>>> fetchPostsByUserId(
    int userId,
  ) async {
    try {
      final data = await apiServices.get(endPoint: 'posts?userId=$userId');
      final posts =
          (data as List)
              .map((json) => PostModel.fromJson(json as Map<String, dynamic>))
              .toList();
      return Right(posts);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
