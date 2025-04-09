// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SignInState {
  SignInStatus get status;
  SomeData? get someData;

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SignInStateCopyWith<SignInState> get copyWith =>
      _$SignInStateCopyWithImpl<SignInState>(this as SignInState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SignInState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.someData, someData) ||
                other.someData == someData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, someData);

  @override
  String toString() {
    return 'SignInState(status: $status, someData: $someData)';
  }
}

/// @nodoc
abstract mixin class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) _then) =
      _$SignInStateCopyWithImpl;
  @useResult
  $Res call({SignInStatus status, SomeData? someData});
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res> implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._self, this._then);

  final SignInState _self;
  final $Res Function(SignInState) _then;

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? someData = freezed,
  }) {
    return _then(_self.copyWith(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as SignInStatus,
      someData: freezed == someData
          ? _self.someData
          : someData // ignore: cast_nullable_to_non_nullable
              as SomeData?,
    ));
  }
}

/// @nodoc

class _SignInState extends SignInState {
  const _SignInState({required this.status, this.someData}) : super._();

  @override
  final SignInStatus status;
  @override
  final SomeData? someData;

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SignInStateCopyWith<_SignInState> get copyWith =>
      __$SignInStateCopyWithImpl<_SignInState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignInState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.someData, someData) ||
                other.someData == someData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, someData);

  @override
  String toString() {
    return 'SignInState(status: $status, someData: $someData)';
  }
}

/// @nodoc
abstract mixin class _$SignInStateCopyWith<$Res>
    implements $SignInStateCopyWith<$Res> {
  factory _$SignInStateCopyWith(
          _SignInState value, $Res Function(_SignInState) _then) =
      __$SignInStateCopyWithImpl;
  @override
  @useResult
  $Res call({SignInStatus status, SomeData? someData});
}

/// @nodoc
class __$SignInStateCopyWithImpl<$Res> implements _$SignInStateCopyWith<$Res> {
  __$SignInStateCopyWithImpl(this._self, this._then);

  final _SignInState _self;
  final $Res Function(_SignInState) _then;

  /// Create a copy of SignInState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? someData = freezed,
  }) {
    return _then(_SignInState(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as SignInStatus,
      someData: freezed == someData
          ? _self.someData
          : someData // ignore: cast_nullable_to_non_nullable
              as SomeData?,
    ));
  }
}

// dart format on
