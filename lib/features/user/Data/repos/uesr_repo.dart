import 'package:dartz/dartz.dart';
import 'package:mobile_task/core/helpers/failure.dart';
import 'package:mobile_task/features/user/data/models/user_model/user_model.dart';

abstract class UesrRepo {
  Future<Either<Failure, List<UserModel>>> fetchUsers();
}
