// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PostModel _$PostModelFromJson(Map<String, dynamic> json) => _PostModel(
      id: (json['id'] as num).toInt(),
      content: json['content'] as String,
      answer: json['answer'] as String?,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$PostModelToJson(_PostModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'answer': instance.answer,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
