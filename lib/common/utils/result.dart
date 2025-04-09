/// Class for wrapping result of a function so it can return 2 values.
///
/// Commonly used to get rid of try..catch clauses and return either failure
/// object or success object (or void if no object return needed)
///
/// In functions/methods where you need to return Result object use:
///
/// [Result.success] factory if function/method was successfully completed and
/// return value inside this constructor.
///
/// [Result.failure] factory if function/method has ended with failure. You can
/// pass failure object into this constructor to distinct error type in
/// outer functions/methods.
///
/// In functions/methods where you receive [Result] object use [fold] method
/// to define behaviours depending on the outcome
///
sealed class Result<F, V> {
  const factory Result.success(V value) = _SuccessResult;

  const factory Result.failure(F failure) = _FailureResult;

  bool get isSuccess;

  bool get isFailure;

  TResult fold<TResult>({
    required TResult Function(F failure) onFailure,
    required TResult Function(V value) onSuccess,
  });

  TResult? onSuccess<TResult>(TResult Function(V value) onSuccess);

  TResult? onFailure<TResult>(TResult Function(F failure) onFailure);
}

class _SuccessResult<F, V> implements Result<F, V> {
  const _SuccessResult(this._value);

  final V _value;

  @override
  TResult fold<TResult>({
    required TResult Function(F failure) onFailure,
    required TResult Function(V value) onSuccess,
  }) {
    return onSuccess(_value);
  }

  @override
  TResult? onSuccess<TResult>(TResult Function(V value) onSuccess) =>
      onSuccess.call(_value);

  @override
  TResult? onFailure<TResult>(TResult Function(F failure) onFailure) => null;

  @override
  bool operator ==(Object other) {
    return other is _SuccessResult && _value == other._value;
  }

  @override
  int get hashCode => _value.hashCode;

  @override
  bool get isFailure => false;

  @override
  bool get isSuccess => true;
}

class _FailureResult<F, V> implements Result<F, V> {
  const _FailureResult(this._failure);

  final F _failure;

  @override
  TResult fold<TResult>({
    required TResult Function(F failure) onFailure,
    required TResult Function(V value) onSuccess,
  }) {
    return onFailure(_failure);
  }

  @override
  TResult? onSuccess<TResult>(TResult Function(V value) onSuccess) => null;

  @override
  TResult? onFailure<TResult>(TResult Function(F failure) onFailure) =>
      onFailure.call(_failure);

  @override
  bool operator ==(Object other) {
    return other is _FailureResult && _failure == other._failure;
  }

  @override
  int get hashCode => _failure.hashCode;

  @override
  bool get isFailure => true;

  @override
  bool get isSuccess => false;
}
