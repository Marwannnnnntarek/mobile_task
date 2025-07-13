import 'package:dartz/dartz.dart';
import 'package:mobile_task/core/helpers/failure.dart';
import 'package:mobile_task/core/services/api_services.dart';
import 'package:mobile_task/features/user/data/models/user_model/user_model.dart';
import 'package:mobile_task/features/user/data/repos/uesr_repo.dart';

class UserRepoImp implements UesrRepo {
  final ApiServices apiServices;

  UserRepoImp(this.apiServices);

  @override
  Future<Either<Failure, List<UserModel>>> fetchUsers() async {
    try {
      final data = await apiServices.get(endPoint: 'users');

      // The data is a List<dynamic> from the API
      final users =
          (data as List)
              .map((json) => UserModel.fromJson(json as Map<String, dynamic>))
              .toList();

      return Right(users);
    } catch (e) {
      return Left(
        ServerFailure('Something went wrong. Please try again later.'),
      );
    }
  }
}
