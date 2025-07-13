import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:mobile_task/features/user/data/models/user_model/user_model.dart';
import 'package:mobile_task/features/user/data/repos/uesr_repo.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit(this.uesrRepo) : super(UserInitial());
  final UesrRepo uesrRepo;
  Future<void> fetchUsers() async {
    emit(UserLoading());
    final result = await uesrRepo.fetchUsers();
    result.fold(
      (failure) => emit(UserFailure(failure.errMessage)),
      (users) => emit(UserSuccess(users)),
    );
  }
}
