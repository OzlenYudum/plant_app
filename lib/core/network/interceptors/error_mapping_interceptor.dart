import 'package:dio/dio.dart';
import '../network_exceptions.dart';

class ErrorMappingInterceptor extends Interceptor {
  @override
  void onError(DioException e, ErrorInterceptorHandler handler) {
    final mapped = _map(e);
    handler.reject(
      DioException(
        requestOptions: e.requestOptions,
        response: e.response,
        type: e.type,
        error: mapped,
        stackTrace: e.stackTrace,
        message: mapped.message,
      ),
    );
  }

  NetworkException _map(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.sendTimeout:
        return const TimeoutNetworkException();
      case DioExceptionType.cancel:
        return const CancelledException();
      case DioExceptionType.connectionError:
        return const NoConnectionException();
      case DioExceptionType.badCertificate:
        return const UnknownNetworkException('Bad certificate');
      case DioExceptionType.badResponse:
        final code = e.response?.statusCode ?? -1;
        if (code == 400) return const BadRequestException();
        if (code == 401) return const UnauthorizedException();
        if (code == 403) return const ForbiddenException();
        if (code == 404) return const NotFoundException();
        if (code >= 500 && code < 600) return const ServerErrorException();
        return UnknownNetworkException('Unexpected status: $code');
      case DioExceptionType.unknown:
        final err = e.error;
        if (err is FormatException) return const SerializationException();
        return const UnknownNetworkException();
    }
  }
}
