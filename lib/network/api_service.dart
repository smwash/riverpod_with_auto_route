import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_refresh/network/url_config.dart';

final dioProvider = Provider<ApiService>((ref) {
  return ApiService();
});

class ApiService {
  static const int connectionTimeOut = 5000;
  static const int receiveTimeOut = 5000;
  Dio? dio;

  ApiService() {
    dio = Dio(BaseOptions(
      connectTimeout: const Duration(seconds: connectionTimeOut),
      receiveTimeout: const Duration(seconds: receiveTimeOut),
      baseUrl: UrlConfig.baseUrl,
    ));
    dio!.interceptors.addAll([AppInterceptor()]);
  }
}

class AppInterceptor extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    log('🌍 Sending network request: ${options.baseUrl}${options.path}');
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    log('${response.statusCode != 200 ? '❌ ${response.statusCode} ❌' : '✅ 200 ✅'} ${response.requestOptions.baseUrl}${response.requestOptions.path}');
    log('Query params: ${response.requestOptions.queryParameters}');
    log('-------------------------');
    handler.next(response);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    log('❌ Dio Error!');
    log('❌ Url: ${err.requestOptions.uri}');
    log('❌ ${err.stackTrace}');
    log('❌ Response Error: ${err.response?.data}');
    handler.next(err);
  }
}
