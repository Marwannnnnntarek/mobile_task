import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:mobile_task/features/user/data/models/user_model/user_model.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserInitial());
}
