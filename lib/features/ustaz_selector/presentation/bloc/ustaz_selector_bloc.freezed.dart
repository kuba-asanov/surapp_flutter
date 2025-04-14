// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ustaz_selector_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UstazPickerState {
  List<UserModel> get reciters;
  String get query;
  int get page;
  bool get last;
  bool get isLoading;

  /// Create a copy of UstazPickerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UstazPickerStateCopyWith<UstazPickerState> get copyWith =>
      _$UstazPickerStateCopyWithImpl<UstazPickerState>(
          this as UstazPickerState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UstazPickerState &&
            const DeepCollectionEquality().equals(other.reciters, reciters) &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.last, last) || other.last == last) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(reciters),
      query,
      page,
      last,
      isLoading);

  @override
  String toString() {
    return 'UstazPickerState(reciters: $reciters, query: $query, page: $page, last: $last, isLoading: $isLoading)';
  }
}

/// @nodoc
abstract mixin class $UstazPickerStateCopyWith<$Res> {
  factory $UstazPickerStateCopyWith(
          UstazPickerState value, $Res Function(UstazPickerState) _then) =
      _$UstazPickerStateCopyWithImpl;
  @useResult
  $Res call(
      {List<UserModel> reciters,
      String query,
      int page,
      bool last,
      bool isLoading});
}

/// @nodoc
class _$UstazPickerStateCopyWithImpl<$Res>
    implements $UstazPickerStateCopyWith<$Res> {
  _$UstazPickerStateCopyWithImpl(this._self, this._then);

  final UstazPickerState _self;
  final $Res Function(UstazPickerState) _then;

  /// Create a copy of UstazPickerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reciters = null,
    Object? query = null,
    Object? page = null,
    Object? last = null,
    Object? isLoading = null,
  }) {
    return _then(_self.copyWith(
      reciters: null == reciters
          ? _self.reciters
          : reciters // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
      query: null == query
          ? _self.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      last: null == last
          ? _self.last
          : last // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _UstazPickerState implements UstazPickerState {
  const _UstazPickerState(
      {final List<UserModel> reciters = const [],
      this.query = '',
      this.page = 0,
      this.last = false,
      this.isLoading = true})
      : _reciters = reciters;

  final List<UserModel> _reciters;
  @override
  @JsonKey()
  List<UserModel> get reciters {
    if (_reciters is EqualUnmodifiableListView) return _reciters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reciters);
  }

  @override
  @JsonKey()
  final String query;
  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final bool last;
  @override
  @JsonKey()
  final bool isLoading;

  /// Create a copy of UstazPickerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UstazPickerStateCopyWith<_UstazPickerState> get copyWith =>
      __$UstazPickerStateCopyWithImpl<_UstazPickerState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UstazPickerState &&
            const DeepCollectionEquality().equals(other._reciters, _reciters) &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.last, last) || other.last == last) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_reciters),
      query,
      page,
      last,
      isLoading);

  @override
  String toString() {
    return 'UstazPickerState(reciters: $reciters, query: $query, page: $page, last: $last, isLoading: $isLoading)';
  }
}

/// @nodoc
abstract mixin class _$UstazPickerStateCopyWith<$Res>
    implements $UstazPickerStateCopyWith<$Res> {
  factory _$UstazPickerStateCopyWith(
          _UstazPickerState value, $Res Function(_UstazPickerState) _then) =
      __$UstazPickerStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<UserModel> reciters,
      String query,
      int page,
      bool last,
      bool isLoading});
}

/// @nodoc
class __$UstazPickerStateCopyWithImpl<$Res>
    implements _$UstazPickerStateCopyWith<$Res> {
  __$UstazPickerStateCopyWithImpl(this._self, this._then);

  final _UstazPickerState _self;
  final $Res Function(_UstazPickerState) _then;

  /// Create a copy of UstazPickerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? reciters = null,
    Object? query = null,
    Object? page = null,
    Object? last = null,
    Object? isLoading = null,
  }) {
    return _then(_UstazPickerState(
      reciters: null == reciters
          ? _self._reciters
          : reciters // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
      query: null == query
          ? _self.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      last: null == last
          ? _self.last
          : last // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
