// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetUserEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetUserEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'GetUserEvent()';
  }
}

/// @nodoc
class $GetUserEventCopyWith<$Res> {
  $GetUserEventCopyWith(GetUserEvent _, $Res Function(GetUserEvent) __);
}

/// @nodoc

class _Started implements GetUserEvent {
  const _Started();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'GetUserEvent.started()';
  }
}

/// @nodoc
mixin _$GetUserState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetUserState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'GetUserState()';
  }
}

/// @nodoc
class $GetUserStateCopyWith<$Res> {
  $GetUserStateCopyWith(GetUserState _, $Res Function(GetUserState) __);
}

/// @nodoc

class GetUserInitial implements GetUserState {
  const GetUserInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetUserInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'GetUserState.initial()';
  }
}

/// @nodoc

class GetUserLoading implements GetUserState {
  const GetUserLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetUserLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'GetUserState.loading()';
  }
}

/// @nodoc

class GetUserError implements GetUserState {
  const GetUserError({required this.errorMessage});

  final String errorMessage;

  /// Create a copy of GetUserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetUserErrorCopyWith<GetUserError> get copyWith =>
      _$GetUserErrorCopyWithImpl<GetUserError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetUserError &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @override
  String toString() {
    return 'GetUserState.error(errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class $GetUserErrorCopyWith<$Res>
    implements $GetUserStateCopyWith<$Res> {
  factory $GetUserErrorCopyWith(
          GetUserError value, $Res Function(GetUserError) _then) =
      _$GetUserErrorCopyWithImpl;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class _$GetUserErrorCopyWithImpl<$Res> implements $GetUserErrorCopyWith<$Res> {
  _$GetUserErrorCopyWithImpl(this._self, this._then);

  final GetUserError _self;
  final $Res Function(GetUserError) _then;

  /// Create a copy of GetUserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(GetUserError(
      errorMessage: null == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class GetUserFetched implements GetUserState {
  const GetUserFetched({required this.user});

  final GetUserModel user;

  /// Create a copy of GetUserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetUserFetchedCopyWith<GetUserFetched> get copyWith =>
      _$GetUserFetchedCopyWithImpl<GetUserFetched>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetUserFetched &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @override
  String toString() {
    return 'GetUserState.fetched(user: $user)';
  }
}

/// @nodoc
abstract mixin class $GetUserFetchedCopyWith<$Res>
    implements $GetUserStateCopyWith<$Res> {
  factory $GetUserFetchedCopyWith(
          GetUserFetched value, $Res Function(GetUserFetched) _then) =
      _$GetUserFetchedCopyWithImpl;
  @useResult
  $Res call({GetUserModel user});

  $GetUserModelCopyWith<$Res> get user;
}

/// @nodoc
class _$GetUserFetchedCopyWithImpl<$Res>
    implements $GetUserFetchedCopyWith<$Res> {
  _$GetUserFetchedCopyWithImpl(this._self, this._then);

  final GetUserFetched _self;
  final $Res Function(GetUserFetched) _then;

  /// Create a copy of GetUserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? user = null,
  }) {
    return _then(GetUserFetched(
      user: null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as GetUserModel,
    ));
  }

  /// Create a copy of GetUserState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GetUserModelCopyWith<$Res> get user {
    return $GetUserModelCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

// dart format on
