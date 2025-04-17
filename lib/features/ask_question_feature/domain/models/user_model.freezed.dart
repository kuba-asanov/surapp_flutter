// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserModel {
  int get id;
  String? get email;
  String get username;
  String? get phone;
  String? get password;
  String? get name;
  String? get surname;
  String? get bio;
  bool? get onboarded;
  int get role;
  @JsonKey(name: 'device_id')
  String? get deviceId;
  @JsonKey(name: 'created_at')
  String get createdAt;
  @JsonKey(name: 'updated_at')
  String get updatedAt;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<UserModel> get copyWith =>
      _$UserModelCopyWithImpl<UserModel>(this as UserModel, _$identity);

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.surname, surname) || other.surname == surname) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.onboarded, onboarded) ||
                other.onboarded == onboarded) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      email,
      username,
      phone,
      password,
      name,
      surname,
      bio,
      onboarded,
      role,
      deviceId,
      createdAt,
      updatedAt);

  @override
  String toString() {
    return 'UserModel(id: $id, email: $email, username: $username, phone: $phone, password: $password, name: $name, surname: $surname, bio: $bio, onboarded: $onboarded, role: $role, deviceId: $deviceId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) _then) =
      _$UserModelCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      String? email,
      String username,
      String? phone,
      String? password,
      String? name,
      String? surname,
      String? bio,
      bool? onboarded,
      int role,
      @JsonKey(name: 'device_id') String? deviceId,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res> implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._self, this._then);

  final UserModel _self;
  final $Res Function(UserModel) _then;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = freezed,
    Object? username = null,
    Object? phone = freezed,
    Object? password = freezed,
    Object? name = freezed,
    Object? surname = freezed,
    Object? bio = freezed,
    Object? onboarded = freezed,
    Object? role = null,
    Object? deviceId = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      surname: freezed == surname
          ? _self.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _self.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      onboarded: freezed == onboarded
          ? _self.onboarded
          : onboarded // ignore: cast_nullable_to_non_nullable
              as bool?,
      role: null == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as int,
      deviceId: freezed == deviceId
          ? _self.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _UserModel implements UserModel {
  const _UserModel(
      {required this.id,
      this.email,
      required this.username,
      this.phone,
      this.password,
      this.name,
      this.surname,
      this.bio,
      this.onboarded,
      required this.role,
      @JsonKey(name: 'device_id') this.deviceId,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt});
  factory _UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  @override
  final int id;
  @override
  final String? email;
  @override
  final String username;
  @override
  final String? phone;
  @override
  final String? password;
  @override
  final String? name;
  @override
  final String? surname;
  @override
  final String? bio;
  @override
  final bool? onboarded;
  @override
  final int role;
  @override
  @JsonKey(name: 'device_id')
  final String? deviceId;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserModelCopyWith<_UserModel> get copyWith =>
      __$UserModelCopyWithImpl<_UserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UserModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.surname, surname) || other.surname == surname) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.onboarded, onboarded) ||
                other.onboarded == onboarded) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      email,
      username,
      phone,
      password,
      name,
      surname,
      bio,
      onboarded,
      role,
      deviceId,
      createdAt,
      updatedAt);

  @override
  String toString() {
    return 'UserModel(id: $id, email: $email, username: $username, phone: $phone, password: $password, name: $name, surname: $surname, bio: $bio, onboarded: $onboarded, role: $role, deviceId: $deviceId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$UserModelCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$UserModelCopyWith(
          _UserModel value, $Res Function(_UserModel) _then) =
      __$UserModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      String? email,
      String username,
      String? phone,
      String? password,
      String? name,
      String? surname,
      String? bio,
      bool? onboarded,
      int role,
      @JsonKey(name: 'device_id') String? deviceId,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});
}

/// @nodoc
class __$UserModelCopyWithImpl<$Res> implements _$UserModelCopyWith<$Res> {
  __$UserModelCopyWithImpl(this._self, this._then);

  final _UserModel _self;
  final $Res Function(_UserModel) _then;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? email = freezed,
    Object? username = null,
    Object? phone = freezed,
    Object? password = freezed,
    Object? name = freezed,
    Object? surname = freezed,
    Object? bio = freezed,
    Object? onboarded = freezed,
    Object? role = null,
    Object? deviceId = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_UserModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      phone: freezed == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      surname: freezed == surname
          ? _self.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _self.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      onboarded: freezed == onboarded
          ? _self.onboarded
          : onboarded // ignore: cast_nullable_to_non_nullable
              as bool?,
      role: null == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as int,
      deviceId: freezed == deviceId
          ? _self.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
