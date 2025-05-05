// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_posts_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetPostsState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetPostsState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'GetPostsState()';
  }
}

/// @nodoc
class $GetPostsStateCopyWith<$Res> {
  $GetPostsStateCopyWith(GetPostsState _, $Res Function(GetPostsState) __);
}

/// @nodoc

class GetPostsInitial implements GetPostsState {
  const GetPostsInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetPostsInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'GetPostsState.initial()';
  }
}

/// @nodoc

class GetPostsLoading implements GetPostsState {
  const GetPostsLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetPostsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'GetPostsState.loading()';
  }
}

/// @nodoc

class GetPostsError implements GetPostsState {
  const GetPostsError({required this.errorMessage});

  final String errorMessage;

  /// Create a copy of GetPostsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetPostsErrorCopyWith<GetPostsError> get copyWith =>
      _$GetPostsErrorCopyWithImpl<GetPostsError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetPostsError &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @override
  String toString() {
    return 'GetPostsState.error(errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class $GetPostsErrorCopyWith<$Res>
    implements $GetPostsStateCopyWith<$Res> {
  factory $GetPostsErrorCopyWith(
          GetPostsError value, $Res Function(GetPostsError) _then) =
      _$GetPostsErrorCopyWithImpl;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class _$GetPostsErrorCopyWithImpl<$Res>
    implements $GetPostsErrorCopyWith<$Res> {
  _$GetPostsErrorCopyWithImpl(this._self, this._then);

  final GetPostsError _self;
  final $Res Function(GetPostsError) _then;

  /// Create a copy of GetPostsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(GetPostsError(
      errorMessage: null == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class GetPostsFetched implements GetPostsState {
  const GetPostsFetched({required final List<PostModel> data}) : _data = data;

  final List<PostModel> _data;
  List<PostModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  /// Create a copy of GetPostsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetPostsFetchedCopyWith<GetPostsFetched> get copyWith =>
      _$GetPostsFetchedCopyWithImpl<GetPostsFetched>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetPostsFetched &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @override
  String toString() {
    return 'GetPostsState.fetched(data: $data)';
  }
}

/// @nodoc
abstract mixin class $GetPostsFetchedCopyWith<$Res>
    implements $GetPostsStateCopyWith<$Res> {
  factory $GetPostsFetchedCopyWith(
          GetPostsFetched value, $Res Function(GetPostsFetched) _then) =
      _$GetPostsFetchedCopyWithImpl;
  @useResult
  $Res call({List<PostModel> data});
}

/// @nodoc
class _$GetPostsFetchedCopyWithImpl<$Res>
    implements $GetPostsFetchedCopyWith<$Res> {
  _$GetPostsFetchedCopyWithImpl(this._self, this._then);

  final GetPostsFetched _self;
  final $Res Function(GetPostsFetched) _then;

  /// Create a copy of GetPostsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
  }) {
    return _then(GetPostsFetched(
      data: null == data
          ? _self._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PostModel>,
    ));
  }
}

// dart format on
