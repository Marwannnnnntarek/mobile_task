import 'package:go_router/go_router.dart';
import 'package:mobile_task/features/home/presentations/views/home_view.dart';
import 'package:mobile_task/features/post/presentations/views/post_view.dart';
import 'package:mobile_task/features/user/presentations/views/user_post_view.dart';
import 'package:mobile_task/features/user/presentations/views/users_view.dart';

class AppRoutes {
  static const String home = '/HomeView';
  static const String users = '/UsersView';
  static const String post = '/PostView';
  static const String userPost = '/UserPostView';

  static final GoRouter router = GoRouter(
    initialLocation: home,
    routes: [
      GoRoute(path: home, builder: (context, state) => HomeView()),
      GoRoute(path: users, builder: (context, state) => UsersView()),
      GoRoute(path: post, builder: (context, state) => PostView()),
      GoRoute(path: userPost, builder: (context, state) => UserPostView()),
    ],
  );
}
