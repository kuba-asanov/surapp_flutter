// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_categories_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ResponseCategoriesPostModel _$ResponseCategoriesPostModelFromJson(
        Map<String, dynamic> json) =>
    _ResponseCategoriesPostModel(
      data: (json['data'] as List<dynamic>)
          .map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: MetaModel.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ResponseCategoriesPostModelToJson(
        _ResponseCategoriesPostModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
    };
