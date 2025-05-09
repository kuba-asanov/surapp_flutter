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
  GetPostsStatus get status;
  List<PostModel> get data;
  String? get errorMessage;
  List<int> get categories;

  /// Create a copy of GetPostsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetPostsStateCopyWith<GetPostsState> get copyWith =>
      _$GetPostsStateCopyWithImpl<GetPostsState>(
          this as GetPostsState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetPostsState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality()
                .equals(other.categories, categories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(data),
      errorMessage,
      const DeepCollectionEquality().hash(categories));

  @override
  String toString() {
    return 'GetPostsState(status: $status, data: $data, errorMessage: $errorMessage, categories: $categories)';
  }
}

/// @nodoc
abstract mixin class $GetPostsStateCopyWith<$Res> {
  factory $GetPostsStateCopyWith(
          GetPostsState value, $Res Function(GetPostsState) _then) =
      _$GetPostsStateCopyWithImpl;
  @useResult
  $Res call(
      {GetPostsStatus status,
      List<PostModel> data,
      String? errorMessage,
      List<int> categories});
}

/// @nodoc
class _$GetPostsStateCopyWithImpl<$Res>
    implements $GetPostsStateCopyWith<$Res> {
  _$GetPostsStateCopyWithImpl(this._self, this._then);

  final GetPostsState _self;
  final $Res Function(GetPostsState) _then;

  /// Create a copy of GetPostsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
    Object? errorMessage = freezed,
    Object? categories = null,
  }) {
    return _then(_self.copyWith(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as GetPostsStatus,
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PostModel>,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      categories: null == categories
          ? _self.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _GetPostsState extends GetPostsState {
  const _GetPostsState(
      {required this.status,
      final List<PostModel> data = const [],
      this.errorMessage,
      final List<int> categories = const []})
      : _data = data,
        _categories = categories,
        super._();

  @override
  final GetPostsStatus status;
  final List<PostModel> _data;
  @override
  @JsonKey()
  List<PostModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final String? errorMessage;
  final List<int> _categories;
  @override
  @JsonKey()
  List<int> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  /// Create a copy of GetPostsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GetPostsStateCopyWith<_GetPostsState> get copyWith =>
      __$GetPostsStateCopyWithImpl<_GetPostsState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetPostsState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_data),
      errorMessage,
      const DeepCollectionEquality().hash(_categories));

  @override
  String toString() {
    return 'GetPostsState(status: $status, data: $data, errorMessage: $errorMessage, categories: $categories)';
  }
}

/// @nodoc
abstract mixin class _$GetPostsStateCopyWith<$Res>
    implements $GetPostsStateCopyWith<$Res> {
  factory _$GetPostsStateCopyWith(
          _GetPostsState value, $Res Function(_GetPostsState) _then) =
      __$GetPostsStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {GetPostsStatus status,
      List<PostModel> data,
      String? errorMessage,
      List<int> categories});
}

/// @nodoc
class __$GetPostsStateCopyWithImpl<$Res>
    implements _$GetPostsStateCopyWith<$Res> {
  __$GetPostsStateCopyWithImpl(this._self, this._then);

  final _GetPostsState _self;
  final $Res Function(_GetPostsState) _then;

  /// Create a copy of GetPostsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? data = null,
    Object? errorMessage = freezed,
    Object? categories = null,
  }) {
    return _then(_GetPostsState(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as GetPostsStatus,
      data: null == data
          ? _self._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PostModel>,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      categories: null == categories
          ? _self._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

// dart format on
