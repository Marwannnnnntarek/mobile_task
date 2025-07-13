import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_task/core/helpers/app_routes.dart';
import 'package:mobile_task/core/widgets/custom_list_tile.dart';
import 'package:mobile_task/features/user/presentations/view_model/user/user_cubit.dart';

class UsersBody extends StatelessWidget {
  const UsersBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, UserState>(
      builder: (context, state) {
        if (state is UserSuccess) {
          return ListView.builder(
            itemCount: state.users.length,
            itemBuilder: (context, index) {
              final user = state.users[index];
              return Card(
                child: CustomListTile(
                  title: user.name ?? 'No Name',
                  subTitle: user.username ?? 'No User Name',
                  onTap: () => context.push(AppRoutes.userPost),
                ),
              );
            },
          );
        } else if (state is UserFailure) {
          return Center(child: Text(state.errMessage));
        } else if (state is UserLoading) {
          return const Center(child: CircularProgressIndicator());
        }
        return const SizedBox.shrink();
      },
    );
  }
}
