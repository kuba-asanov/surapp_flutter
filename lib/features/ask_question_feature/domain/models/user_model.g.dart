// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
      id: (json['id'] as num).toInt(),
      email: json['email'] as String?,
      username: json['username'] as String,
      phone: json['phone'] as String?,
      password: json['password'] as String?,
      name: json['name'] as String?,
      surname: json['surname'] as String?,
      bio: json['bio'] as String?,
      onboarded: json['onboarded'] as bool,
      role: (json['role'] as num).toInt(),
      deviceId: json['device_id'] as String?,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
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
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
