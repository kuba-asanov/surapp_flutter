// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_categories_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
ResponseCategoriesModel _$ResponseCategoriesModelFromJson(
    Map<String, dynamic> json) {
  return _ResponseCategoriesPostModel.fromJson(json);
}

/// @nodoc
mixin _$ResponseCategoriesModel implements DiagnosticableTreeMixin {
  List<CategoryModel> get data;
  MetaModel get meta;

  /// Create a copy of ResponseCategoriesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResponseCategoriesModelCopyWith<ResponseCategoriesModel> get copyWith =>
      _$ResponseCategoriesModelCopyWithImpl<ResponseCategoriesModel>(
          this as ResponseCategoriesModel, _$identity);

  /// Serializes this ResponseCategoriesModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'ResponseCategoriesModel'))
      ..add(DiagnosticsProperty('data', data))
      ..add(DiagnosticsProperty('meta', meta));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResponseCategoriesModel &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data), meta);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResponseCategoriesModel(data: $data, meta: $meta)';
  }
}

/// @nodoc
abstract mixin class $ResponseCategoriesModelCopyWith<$Res> {
  factory $ResponseCategoriesModelCopyWith(ResponseCategoriesModel value,
          $Res Function(ResponseCategoriesModel) _then) =
      _$ResponseCategoriesModelCopyWithImpl;
  @useResult
  $Res call({List<CategoryModel> data, MetaModel meta});

  $MetaModelCopyWith<$Res> get meta;
}

/// @nodoc
class _$ResponseCategoriesModelCopyWithImpl<$Res>
    implements $ResponseCategoriesModelCopyWith<$Res> {
  _$ResponseCategoriesModelCopyWithImpl(this._self, this._then);

  final ResponseCategoriesModel _self;
  final $Res Function(ResponseCategoriesModel) _then;

  /// Create a copy of ResponseCategoriesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? meta = null,
  }) {
    return _then(_self.copyWith(
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      meta: null == meta
          ? _self.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaModel,
    ));
  }

  /// Create a copy of ResponseCategoriesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetaModelCopyWith<$Res> get meta {
    return $MetaModelCopyWith<$Res>(_self.meta, (value) {
      return _then(_self.copyWith(meta: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _ResponseCategoriesPostModel
    with DiagnosticableTreeMixin
    implements ResponseCategoriesModel {
  const _ResponseCategoriesPostModel(
      {required final List<CategoryModel> data, required this.meta})
      : _data = data;
  factory _ResponseCategoriesPostModel.fromJson(Map<String, dynamic> json) =>
      _$ResponseCategoriesPostModelFromJson(json);

  final List<CategoryModel> _data;
  @override
  List<CategoryModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final MetaModel meta;

  /// Create a copy of ResponseCategoriesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ResponseCategoriesPostModelCopyWith<_ResponseCategoriesPostModel>
      get copyWith => __$ResponseCategoriesPostModelCopyWithImpl<
          _ResponseCategoriesPostModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ResponseCategoriesPostModelToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'ResponseCategoriesModel'))
      ..add(DiagnosticsProperty('data', data))
      ..add(DiagnosticsProperty('meta', meta));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResponseCategoriesPostModel &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), meta);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResponseCategoriesModel(data: $data, meta: $meta)';
  }
}

/// @nodoc
abstract mixin class _$ResponseCategoriesPostModelCopyWith<$Res>
    implements $ResponseCategoriesModelCopyWith<$Res> {
  factory _$ResponseCategoriesPostModelCopyWith(
          _ResponseCategoriesPostModel value,
          $Res Function(_ResponseCategoriesPostModel) _then) =
      __$ResponseCategoriesPostModelCopyWithImpl;
  @override
  @useResult
  $Res call({List<CategoryModel> data, MetaModel meta});

  @override
  $MetaModelCopyWith<$Res> get meta;
}

/// @nodoc
class __$ResponseCategoriesPostModelCopyWithImpl<$Res>
    implements _$ResponseCategoriesPostModelCopyWith<$Res> {
  __$ResponseCategoriesPostModelCopyWithImpl(this._self, this._then);

  final _ResponseCategoriesPostModel _self;
  final $Res Function(_ResponseCategoriesPostModel) _then;

  /// Create a copy of ResponseCategoriesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
    Object? meta = null,
  }) {
    return _then(_ResponseCategoriesPostModel(
      data: null == data
          ? _self._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>,
      meta: null == meta
          ? _self.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaModel,
    ));
  }

  /// Create a copy of ResponseCategoriesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetaModelCopyWith<$Res> get meta {
    return $MetaModelCopyWith<$Res>(_self.meta, (value) {
      return _then(_self.copyWith(meta: value));
    });
  }
}

// dart format on
