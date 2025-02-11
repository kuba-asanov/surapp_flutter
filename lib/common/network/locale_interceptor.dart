import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class LocaleInterceptor extends QueuedInterceptor {
  LocaleInterceptor({
    required this.localeGetter,
  });

  final ValueGetter<String> localeGetter;

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    options.headers.addAll({'Content-Language': localeGetter()});
    super.onRequest(options, handler);
  }
}
