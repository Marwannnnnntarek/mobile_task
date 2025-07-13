import 'package:dio/dio.dart';

class ApiServices {
  final baseUrl = 'https://jsonplaceholder.typicode.com/';
  final Dio dio;

  ApiServices(this.dio);

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await dio.get('$baseUrl$endPoint');
    return response.data;
  }
}
