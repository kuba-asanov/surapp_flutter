// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ResponsePostModel _$ResponsePostModelFromJson(Map<String, dynamic> json) =>
    _ResponsePostModel(
      data: (json['data'] as List<dynamic>)
          .map((e) => PostModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: MetaModel.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ResponsePostModelToJson(_ResponsePostModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
    };
