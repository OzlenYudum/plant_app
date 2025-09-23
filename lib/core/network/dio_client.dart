import 'package:dio/dio.dart';
import 'interceptors/error_mapping_interceptor.dart';
import 'interceptors/logging_interceptor.dart';

class DioClient {
  static Dio build({
    required String baseUrl,
    Duration connectTimeout = const Duration(seconds: 10),
    Duration receiveTimeout = const Duration(seconds: 10),
    Duration sendTimeout = const Duration(seconds: 10),
    bool enableLoggingInDebug = true,
  }) {
    final dio = Dio(BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: connectTimeout,
      receiveTimeout: receiveTimeout,
      sendTimeout: sendTimeout,
      
       validateStatus: (code) => code != null && code >= 200 && code < 300,
    ));

    dio.interceptors.add(ErrorMappingInterceptor());
    if (enableLoggingInDebug) dio.interceptors.add(LoggingInterceptor());
    return dio;
  }
}
