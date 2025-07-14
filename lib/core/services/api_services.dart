import 'package:dio/dio.dart';

class ApiServices {
  ApiServices();

  final dio = Dio(
    BaseOptions(
      baseUrl: 'https://jsonplaceholder.typicode.com/',
      headers: {
        'Accept': 'application/json',
        'User-Agent': 'Mozilla/5.0 (Mobile; Flutter) AppleWebKit/537.36',
      },
    ),
  );

  Future<dynamic> get({required String endPoint}) async {
    var response = await dio.get(endPoint);
    return response.data;
  }
}
