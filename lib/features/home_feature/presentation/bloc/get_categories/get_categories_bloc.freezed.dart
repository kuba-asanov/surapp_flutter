// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_categories_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetCategoriesEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetCategoriesEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'GetCategoriesEvent()';
  }
}

/// @nodoc
class $GetCategoriesEventCopyWith<$Res> {
  $GetCategoriesEventCopyWith(
      GetCategoriesEvent _, $Res Function(GetCategoriesEvent) __);
}

/// @nodoc

class _Get implements GetCategoriesEvent {
  const _Get();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Get);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'GetCategoriesEvent.started()';
  }
}

/// @nodoc
mixin _$GetCategoriesState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetCategoriesState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'GetCategoriesState()';
  }
}

/// @nodoc
class $GetCategoriesStateCopyWith<$Res> {
  $GetCategoriesStateCopyWith(
      GetCategoriesState _, $Res Function(GetCategoriesState) __);
}

/// @nodoc

class GetCategoriesInitial implements GetCategoriesState {
  const GetCategoriesInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetCategoriesInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'GetCategoriesState.initial()';
  }
}

/// @nodoc

class GetCategoriesLoading implements GetCategoriesState {
  const GetCategoriesLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetCategoriesLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'GetCategoriesState.loading()';
  }
}

/// @nodoc

class GetCategoriesError implements GetCategoriesState {
  const GetCategoriesError({required this.errorMessage});

  final String errorMessage;

  /// Create a copy of GetCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetCategoriesErrorCopyWith<GetCategoriesError> get copyWith =>
      _$GetCategoriesErrorCopyWithImpl<GetCategoriesError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetCategoriesError &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @override
  String toString() {
    return 'GetCategoriesState.error(errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class $GetCategoriesErrorCopyWith<$Res>
    implements $GetCategoriesStateCopyWith<$Res> {
  factory $GetCategoriesErrorCopyWith(
          GetCategoriesError value, $Res Function(GetCategoriesError) _then) =
      _$GetCategoriesErrorCopyWithImpl;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class _$GetCategoriesErrorCopyWithImpl<$Res>
    implements $GetCategoriesErrorCopyWith<$Res> {
  _$GetCategoriesErrorCopyWithImpl(this._self, this._then);

  final GetCategoriesError _self;
  final $Res Function(GetCategoriesError) _then;

  /// Create a copy of GetCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(GetCategoriesError(
      errorMessage: null == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class GetCategoriesFetched implements GetCategoriesState {
  const GetCategoriesFetched({required final List<CategoryModel> data})
      : _data = data;

  final List<CategoryModel> _data;
  List<CategoryModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  /// Create a copy of GetCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetCategoriesFetchedCopyWith<GetCategoriesFetched> get copyWith =>
      _$GetCategoriesFetchedCopyWithImpl<GetCategoriesFetched>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetCategoriesFetched &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @override
  String toString() {
    return 'GetCategoriesState.fetched(data: $data)';
  }
}

/// @nodoc
abstract mixin class $GetCategoriesFetchedCopyWith<$Res>
    implements $GetCategoriesStateCopyWith<$Res> {
  factory $GetCategoriesFetchedCopyWith(GetCategoriesFetched value,
          $Res Function(GetCategoriesFetched) _then) =
      _$GetCategoriesFetchedCopyWithImpl;
  @useResult
  $Res call({List<CategoryModel> data});
}

/// @nodoc
class _$GetCategoriesFetchedCopyWithImpl<$Res>
    implements $GetCategoriesFetchedCopyWith<$Res> {
  _$GetCategoriesFetchedCopyWithImpl(this._self, this._then);

  final GetCategoriesFetched _self;
  final $Res Function(GetCategoriesFetched) _then;

  /// Create a copy of GetCategoriesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
  }) {
    return _then(GetCategoriesFetched(
      data: null == data
          ? _self._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
    ));
  }
}

// dart format on
