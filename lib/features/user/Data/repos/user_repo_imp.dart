import 'package:dartz/dartz.dart';
import 'package:mobile_task/core/helpers/failure.dart';
import 'package:mobile_task/features/user/data/models/user_model/user_model.dart';
import 'package:mobile_task/features/user/data/repos/uesr_repo.dart';

class UserRepoImp implements UesrRepo {
  @override
  Future<Either<Failure, List<UserModel>>> fetchUsers() {
    throw UnimplementedError();
  }
}
