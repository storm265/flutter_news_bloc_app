import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:todo_bloc_practice/schemas/api_scheme.dart';

class NetworkSource {
  static final NetworkSource _instance = NetworkSource._internal();

  factory NetworkSource() => _instance;

  NetworkSource._internal();

  static final Dio _dio = Dio(
    BaseOptions(
      baseUrl: dotenv.env[ApiScheme.apiURL] ?? 'null',
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 5),
    ),
  );

  final Options authOptions = Options(
    validateStatus: (_) => true,
    headers: {
      ApiScheme.xAPiKey: dotenv.env[ApiScheme.apiKey],
    },
    
  );

  Future<Response<dynamic>> get({
    required String path,
    Map<String, dynamic>? queryParameters,
  }) async =>
      await _dio.get(
        path,
        queryParameters: queryParameters,
        options: authOptions,
      );
}
