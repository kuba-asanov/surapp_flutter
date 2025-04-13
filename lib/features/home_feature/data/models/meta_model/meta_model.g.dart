// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MetaModel _$MetaModelFromJson(Map<String, dynamic> json) => _MetaModel(
      page: (json['page'] as num).toInt(),
      itemsCount: (json['itemsCount'] as num).toInt(),
      limit: (json['limit'] as num).toInt(),
      pagesCount: (json['pagesCount'] as num).toInt(),
    );

Map<String, dynamic> _$MetaModelToJson(_MetaModel instance) =>
    <String, dynamic>{
      'page': instance.page,
      'itemsCount': instance.itemsCount,
      'limit': instance.limit,
      'pagesCount': instance.pagesCount,
    };
