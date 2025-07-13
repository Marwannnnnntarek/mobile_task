import 'package:dartz/dartz.dart';
import 'package:mobile_task/core/helpers/failure.dart';
import 'package:mobile_task/features/post/data/models/post_model/post_model.dart';

abstract class PostRepo {
  Future<Either<Failure, List<PostModel>>> fetchPosts();
  Future<Either<Failure, List<PostModel>>> fetchPostsByUserId(int userId);
}
