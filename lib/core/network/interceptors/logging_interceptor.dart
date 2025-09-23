import 'dart:developer' as dev;
import 'package:dio/dio.dart';

class LoggingInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions o, RequestInterceptorHandler h) {
    assert(() { dev.log('[REQ] ${o.method} ${o.baseUrl}${o.path}'); return true; }());
    h.next(o);
  }
  @override
  void onResponse(Response r, ResponseInterceptorHandler h) {
    assert(() { dev.log('[RES] ${r.statusCode} ${r.requestOptions.method} ${r.requestOptions.path}'); return true; }());
    h.next(r);
  }
  @override
  void onError(DioException e, ErrorInterceptorHandler h) {
    assert(() { dev.log('[ERR] ${e.type} ${e.requestOptions.method} ${e.requestOptions.path} : ${e.message}'); return true; }());
    h.next(e);
  }
}
