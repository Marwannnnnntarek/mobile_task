import 'package:dartz/dartz.dart';

abstract class UesrRepo {
  Future<Either<Failure, List<Item>>> fetchBooks();
}
