import 'dart:async';

T? tryOrNull<T>(
  T? Function() tryFunc, {
  void Function(Object e)? onError,
}) {
  try {
    return tryFunc.call();
  } catch (e) {
    onError?.call(e);
    return null;
  }
}

Future<T?> tryOrNullAsync<T>(FutureOr<T?> Function() tryFunc) async {
  try {
    return await tryFunc.call();
  } catch (_) {
    return null;
  }
}

Future<T> tryOrAsync<T>(
  FutureOr<T> Function() tryFunc,
  FutureOr<T> Function() orFunc,
) async {
  try {
    return await tryFunc.call();
  } catch (_) {
    return orFunc.call();
  }
}
