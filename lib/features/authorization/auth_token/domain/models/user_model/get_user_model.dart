// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_user_model.freezed.dart';
part 'get_user_model.g.dart';

@freezed
abstract class GetUserModel with _$GetUserModel {
  const factory GetUserModel({
    required int id,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    required String email,
    required String username,
    required String phone,
    required String password,
    required String name,
    required String surname,
    required String bio,
    required bool onboarded,
    required int role,
    @JsonKey(name: 'device_id') String? deviceId,
  }) = _GetUserModel;

  factory GetUserModel.fromJson(Map<String, Object?> json) =>
      _$GetUserModelFromJson(json);
}
