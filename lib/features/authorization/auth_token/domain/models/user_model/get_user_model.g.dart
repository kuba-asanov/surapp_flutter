// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetUserModel _$GetUserModelFromJson(Map<String, dynamic> json) =>
    _GetUserModel(
      id: (json['id'] as num).toInt(),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      email: json['email'] as String,
      username: json['username'] as String,
      phone: json['phone'] as String,
      password: json['password'] as String,
      name: json['name'] as String,
      surname: json['surname'] as String,
      bio: json['bio'] as String,
      onboarded: json['onboarded'] as bool,
      role: (json['role'] as num).toInt(),
      deviceId: json['device_id'] as String?,
    );

Map<String, dynamic> _$GetUserModelToJson(_GetUserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'email': instance.email,
      'username': instance.username,
      'phone': instance.phone,
      'password': instance.password,
      'name': instance.name,
      'surname': instance.surname,
      'bio': instance.bio,
      'onboarded': instance.onboarded,
      'role': instance.role,
      'device_id': instance.deviceId,
    };
