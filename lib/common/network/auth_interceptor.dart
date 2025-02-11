import 'package:dio/dio.dart';

class AuthInterceptor extends QueuedInterceptor {
  AuthInterceptor({
    required TokenGetter tokenGetter,
  }) : _tokenGetter = tokenGetter;

  final TokenGetter _tokenGetter;

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final accessToken = await _tokenGetter();

    if (accessToken != null && accessToken.isNotEmpty) {
      options.headers.addAll(_getHeaders(accessToken));
    }
    super.onRequest(options, handler);
  }

  Map<String, dynamic> _getHeaders(String accessToken) {
    return {'Authorization': 'Bearer $accessToken'};
  }
}

typedef TokenGetter = Future<String?> Function();
