import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_task/core/widgets/custom_loading_indicator.dart';
import 'package:mobile_task/features/user/presentations/view_model/user/user_cubit.dart';
import 'package:mobile_task/features/user/presentations/views/widgets/user_list_view.dart';

class UsersBody extends StatelessWidget {
  const UsersBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, UserState>(
      builder: (context, state) {
        if (state is UserSuccess) {
          return UserListView(users: state.users);
        } else if (state is UserFailure) {
          return Center(child: Text(state.errMessage));
        } else if (state is UserLoading) {
          return const Center(child: CustomLoadingIndicator());
        }
        return const SizedBox.shrink();
      },
    );
  }
}
