import 'package:dio/dio.dart';

abstract class Api {
  Future<Response> getEndpoint(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameter,
  });
}
