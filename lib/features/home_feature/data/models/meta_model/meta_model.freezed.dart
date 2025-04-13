// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meta_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MetaModel {
  int get page;
  int get itemsCount;
  int get limit;
  int get pagesCount;

  /// Create a copy of MetaModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MetaModelCopyWith<MetaModel> get copyWith =>
      _$MetaModelCopyWithImpl<MetaModel>(this as MetaModel, _$identity);

  /// Serializes this MetaModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MetaModel &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.itemsCount, itemsCount) ||
                other.itemsCount == itemsCount) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.pagesCount, pagesCount) ||
                other.pagesCount == pagesCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, page, itemsCount, limit, pagesCount);

  @override
  String toString() {
    return 'MetaModel(page: $page, itemsCount: $itemsCount, limit: $limit, pagesCount: $pagesCount)';
  }
}

/// @nodoc
abstract mixin class $MetaModelCopyWith<$Res> {
  factory $MetaModelCopyWith(MetaModel value, $Res Function(MetaModel) _then) =
      _$MetaModelCopyWithImpl;
  @useResult
  $Res call({int page, int itemsCount, int limit, int pagesCount});
}

/// @nodoc
class _$MetaModelCopyWithImpl<$Res> implements $MetaModelCopyWith<$Res> {
  _$MetaModelCopyWithImpl(this._self, this._then);

  final MetaModel _self;
  final $Res Function(MetaModel) _then;

  /// Create a copy of MetaModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? itemsCount = null,
    Object? limit = null,
    Object? pagesCount = null,
  }) {
    return _then(_self.copyWith(
      page: null == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      itemsCount: null == itemsCount
          ? _self.itemsCount
          : itemsCount // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _self.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      pagesCount: null == pagesCount
          ? _self.pagesCount
          : pagesCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _MetaModel implements MetaModel {
  const _MetaModel(
      {required this.page,
      required this.itemsCount,
      required this.limit,
      required this.pagesCount});
  factory _MetaModel.fromJson(Map<String, dynamic> json) =>
      _$MetaModelFromJson(json);

  @override
  final int page;
  @override
  final int itemsCount;
  @override
  final int limit;
  @override
  final int pagesCount;

  /// Create a copy of MetaModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MetaModelCopyWith<_MetaModel> get copyWith =>
      __$MetaModelCopyWithImpl<_MetaModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MetaModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MetaModel &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.itemsCount, itemsCount) ||
                other.itemsCount == itemsCount) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.pagesCount, pagesCount) ||
                other.pagesCount == pagesCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, page, itemsCount, limit, pagesCount);

  @override
  String toString() {
    return 'MetaModel(page: $page, itemsCount: $itemsCount, limit: $limit, pagesCount: $pagesCount)';
  }
}

/// @nodoc
abstract mixin class _$MetaModelCopyWith<$Res>
    implements $MetaModelCopyWith<$Res> {
  factory _$MetaModelCopyWith(
          _MetaModel value, $Res Function(_MetaModel) _then) =
      __$MetaModelCopyWithImpl;
  @override
  @useResult
  $Res call({int page, int itemsCount, int limit, int pagesCount});
}

/// @nodoc
class __$MetaModelCopyWithImpl<$Res> implements _$MetaModelCopyWith<$Res> {
  __$MetaModelCopyWithImpl(this._self, this._then);

  final _MetaModel _self;
  final $Res Function(_MetaModel) _then;

  /// Create a copy of MetaModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? page = null,
    Object? itemsCount = null,
    Object? limit = null,
    Object? pagesCount = null,
  }) {
    return _then(_MetaModel(
      page: null == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      itemsCount: null == itemsCount
          ? _self.itemsCount
          : itemsCount // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _self.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      pagesCount: null == pagesCount
          ? _self.pagesCount
          : pagesCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
