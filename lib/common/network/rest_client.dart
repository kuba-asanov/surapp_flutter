import 'dart:async';

import 'package:dio/dio.dart';
import 'package:surapp_flutter/common/network/network_error_handler.dart';
import 'package:surapp_flutter/common/network/network_info.dart';
import 'package:surapp_flutter/common/utils/data_parser.dart';
import 'package:surapp_flutter/common/utils/extended_error.dart';

abstract class RestClient {
  RestClient(
    this._client, {
    required NetworkErrorHandler errorHandler,
    List<Interceptor> interceptors = const [],
  }) : _errorHandler = errorHandler;

  final Dio _client;

  final NetworkInfo _networkInfo =
      NetworkInfoImpl(connectivity: Connectivity());

  final NetworkErrorHandler _errorHandler;

  /// Обёртки запросов дио
  Future<T> get<T>(
    String url, {
    Map<String, dynamic>? params,
    Options? options,
    CancelToken? cancelToken,
    DataParser<T>? parser,
  }) =>
      request(
        (dio) => dio.get(
          url,
          queryParameters: params,
          options: options,
          cancelToken: cancelToken,
        ),
        parser: parser,
      );

  Future<T> post<T>(
    String url, {
    Map<String, dynamic>? body,
    Map<String, dynamic>? params,
    Options? options,
    CancelToken? cancelToken,
    DataParser<T>? parser,
  }) =>
      request(
        (dio) => dio.post(
          url,
          data: body,
          queryParameters: params,
          options: options,
          cancelToken: cancelToken,
        ),
        parser: parser,
      );

  Future<T> put<T>(
    String url, {
    Map<String, dynamic>? body,
    Map<String, dynamic>? params,
    Options? options,
    CancelToken? cancelToken,
    DataParser<T>? parser,
  }) =>
      request(
        (dio) => dio.put(
          url,
          data: body,
          options: options,
          cancelToken: cancelToken,
          queryParameters: params,
        ),
        parser: parser,
      );

  Future<T> delete<T>(
    String url, {
    Map<String, dynamic>? params,
    Options? options,
    CancelToken? cancelToken,
    DataParser<T>? parser,
  }) =>
      request(
        (dio) => dio.delete(
          url,
          options: options,
          cancelToken: cancelToken,
          queryParameters: params,
        ),
        parser: parser,
      );

  Future<T> patch<T>(
    String url, {
    Map<String, dynamic>? body,
    Options? options,
    CancelToken? cancelToken,
    Map<String, dynamic>? params,
    DataParser<T>? parser,
  }) =>
      request(
        (_) => _client.patch(
          url,
          data: body,
          options: options,
          cancelToken: cancelToken,
          queryParameters: params,
        ),
        parser: parser,
      );

  Future<T> request<T>(
    Future<Response> Function(Dio dio) call, {
    required DataParser<T>? parser,
  }) async {
    return _errorHandler.tryCall<T>(() async {
      if (await _networkInfo.isConnected) {
        final response = await call(_client);
        final data = response.data;
        if (parser != null) return parser.parse(data);
        return data;
      } else {
        throw const NoConnectionError();
      }
    });
  }
}
