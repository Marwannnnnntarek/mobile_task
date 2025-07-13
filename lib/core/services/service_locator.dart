import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:mobile_task/core/services/api_services.dart';
import 'package:mobile_task/features/post/data/repos/post_repo_imp.dart';
import 'package:mobile_task/features/user/data/repos/user_repo_imp.dart';

final getIt = GetIt.instance;

void setUp() {
  getIt.registerSingleton<ApiServices>(ApiServices(Dio()));
  getIt.registerSingleton<UserRepoImp>(UserRepoImp(getIt.get<ApiServices>()));
  getIt.registerSingleton<PostRepoImp>(PostRepoImp(getIt.get<ApiServices>()));
}
