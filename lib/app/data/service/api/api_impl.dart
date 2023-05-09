import 'package:dio/dio.dart';
import 'package:jsonplaceholder/app/data/service/api/api.dart';

class ApiImpl implements Api {
  final Dio dio;

  ApiImpl({required this.dio});

  @override
  Future<Response> getEndpoint(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameter,
  }) async {
    return await dio.get(
      path,
      data: data,
      queryParameters: queryParameter,
    );
  }
}
