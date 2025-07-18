part of 'user_cubit.dart';

sealed class UserState extends Equatable {
  const UserState();

  @override
  List<Object> get props => [];
}

final class UserInitial extends UserState {}

final class UserLoading extends UserState {}

final class UserSuccess extends UserState {
  final List<UserModel> users;

  const UserSuccess(this.users);
}

final class UserFailure extends UserState {
  final String errMessage;

  const UserFailure(this.errMessage);
}
