import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_task/core/services/service_locator.dart';
import 'package:mobile_task/features/home/presentations/views/home_view.dart';
import 'package:mobile_task/features/post/data/repos/post_repo_imp.dart';
import 'package:mobile_task/features/post/presentations/view_model/post/post_cubit.dart';
import 'package:mobile_task/features/post/presentations/views/post_view.dart';
import 'package:mobile_task/features/splash/views/splash_view.dart';
import 'package:mobile_task/features/post/presentations/views/user_post_view.dart';
import 'package:mobile_task/features/user/presentations/views/users_view.dart';

class AppRoutes {
  static const String splash = '/SplashView';
  static const String home = '/HomeView';
  static const String users = '/UsersView';
  static const String post = '/PostView';
  static const String userPost = '/UserPostView/:userId';

  static final GoRouter router = GoRouter(
    initialLocation: splash,
    routes: [
      GoRoute(path: splash, builder: (context, state) => const SplashView()),
      GoRoute(path: home, builder: (context, state) => const HomeView()),
      GoRoute(path: users, builder: (context, state) => const UsersView()),
      GoRoute(path: post, builder: (context, state) => const PostView()),
      GoRoute(
        path: userPost,
        builder: (context, state) {
          final userId = int.parse(state.pathParameters['userId']!);
          return BlocProvider(
            create:
                (context) =>
                    PostCubit(getIt<PostRepoImp>())..fetchPostsByUserId(userId),
            child: UserPostView(userId: userId),
          );
        },
      ),
    ],
  );
}
