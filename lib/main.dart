import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_task/core/helpers/app_routes.dart';
import 'package:mobile_task/core/services/service_locator.dart';
import 'package:mobile_task/features/post/data/repos/post_repo_imp.dart';
import 'package:mobile_task/features/post/presentations/view_model/post/post_cubit.dart';
import 'package:mobile_task/features/user/data/repos/user_repo_imp.dart';
import 'package:mobile_task/features/user/presentations/view_model/user/user_cubit.dart';

void main() {
  setUp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create:
              (context) => UserCubit(getIt.get<UserRepoImp>())..fetchUsers(),
        ),
        BlocProvider(
          create:
              (context) => PostCubit(getIt.get<PostRepoImp>())..fetchPosts(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRoutes.router,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
