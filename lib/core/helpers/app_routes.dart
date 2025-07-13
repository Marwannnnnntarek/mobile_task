import 'package:go_router/go_router.dart';
import 'package:mobile_task/features/home/presentations/view/home_view.dart';
import 'package:mobile_task/features/home/presentations/view/post_view.dart';
import 'package:mobile_task/features/home/presentations/view/user_post_view.dart';
import 'package:mobile_task/features/home/presentations/view/user_view.dart';

class AppRoutes {
  static const String home = '/HomeView';
  static const String user = '/UserView';
  static const String post = '/PostView';
  static const String userPost = '/UserPostView';

  static final GoRouter router = GoRouter(
    initialLocation: home,
    routes: [
      GoRoute(path: home, builder: (context, state) => HomeView()),
      GoRoute(path: user, builder: (context, state) => UserView()),
      GoRoute(path: post, builder: (context, state) => PostView()),
      GoRoute(path: post, builder: (context, state) => UserPostView()),
    ],
  );
}
