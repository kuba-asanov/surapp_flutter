// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetUserModel {
  int get id;
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  String get email;
  String get username;
  String get phone;
  String get password;
  String get name;
  String get surname;
  String get bio;
  bool get onboarded;
  int get role;
  @JsonKey(name: 'device_id')
  String? get deviceId;

  /// Create a copy of GetUserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetUserModelCopyWith<GetUserModel> get copyWith =>
      _$GetUserModelCopyWithImpl<GetUserModel>(
          this as GetUserModel, _$identity);

  /// Serializes this GetUserModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetUserModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
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
                other.deviceId == deviceId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, createdAt, updatedAt, email,
      username, phone, password, name, surname, bio, onboarded, role, deviceId);

  @override
  String toString() {
    return 'GetUserModel(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, email: $email, username: $username, phone: $phone, password: $password, name: $name, surname: $surname, bio: $bio, onboarded: $onboarded, role: $role, deviceId: $deviceId)';
  }
}

/// @nodoc
abstract mixin class $GetUserModelCopyWith<$Res> {
  factory $GetUserModelCopyWith(
          GetUserModel value, $Res Function(GetUserModel) _then) =
      _$GetUserModelCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      String email,
      String username,
      String phone,
      String password,
      String name,
      String surname,
      String bio,
      bool onboarded,
      int role,
      @JsonKey(name: 'device_id') String? deviceId});
}

/// @nodoc
class _$GetUserModelCopyWithImpl<$Res> implements $GetUserModelCopyWith<$Res> {
  _$GetUserModelCopyWithImpl(this._self, this._then);

  final GetUserModel _self;
  final $Res Function(GetUserModel) _then;

  /// Create a copy of GetUserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? email = null,
    Object? username = null,
    Object? phone = null,
    Object? password = null,
    Object? name = null,
    Object? surname = null,
    Object? bio = null,
    Object? onboarded = null,
    Object? role = null,
    Object? deviceId = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      surname: null == surname
          ? _self.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      bio: null == bio
          ? _self.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      onboarded: null == onboarded
          ? _self.onboarded
          : onboarded // ignore: cast_nullable_to_non_nullable
              as bool,
      role: null == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as int,
      deviceId: freezed == deviceId
          ? _self.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _GetUserModel implements GetUserModel {
  const _GetUserModel(
      {required this.id,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      required this.email,
      required this.username,
      required this.phone,
      required this.password,
      required this.name,
      required this.surname,
      required this.bio,
      required this.onboarded,
      required this.role,
      @JsonKey(name: 'device_id') this.deviceId});
  factory _GetUserModel.fromJson(Map<String, dynamic> json) =>
      _$GetUserModelFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  @override
  final String email;
  @override
  final String username;
  @override
  final String phone;
  @override
  final String password;
  @override
  final String name;
  @override
  final String surname;
  @override
  final String bio;
  @override
  final bool onboarded;
  @override
  final int role;
  @override
  @JsonKey(name: 'device_id')
  final String? deviceId;

  /// Create a copy of GetUserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GetUserModelCopyWith<_GetUserModel> get copyWith =>
      __$GetUserModelCopyWithImpl<_GetUserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GetUserModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetUserModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
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
                other.deviceId == deviceId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, createdAt, updatedAt, email,
      username, phone, password, name, surname, bio, onboarded, role, deviceId);

  @override
  String toString() {
    return 'GetUserModel(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, email: $email, username: $username, phone: $phone, password: $password, name: $name, surname: $surname, bio: $bio, onboarded: $onboarded, role: $role, deviceId: $deviceId)';
  }
}

/// @nodoc
abstract mixin class _$GetUserModelCopyWith<$Res>
    implements $GetUserModelCopyWith<$Res> {
  factory _$GetUserModelCopyWith(
          _GetUserModel value, $Res Function(_GetUserModel) _then) =
      __$GetUserModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      String email,
      String username,
      String phone,
      String password,
      String name,
      String surname,
      String bio,
      bool onboarded,
      int role,
      @JsonKey(name: 'device_id') String? deviceId});
}

/// @nodoc
class __$GetUserModelCopyWithImpl<$Res>
    implements _$GetUserModelCopyWith<$Res> {
  __$GetUserModelCopyWithImpl(this._self, this._then);

  final _GetUserModel _self;
  final $Res Function(_GetUserModel) _then;

  /// Create a copy of GetUserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? email = null,
    Object? username = null,
    Object? phone = null,
    Object? password = null,
    Object? name = null,
    Object? surname = null,
    Object? bio = null,
    Object? onboarded = null,
    Object? role = null,
    Object? deviceId = freezed,
  }) {
    return _then(_GetUserModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      surname: null == surname
          ? _self.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      bio: null == bio
          ? _self.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      onboarded: null == onboarded
          ? _self.onboarded
          : onboarded // ignore: cast_nullable_to_non_nullable
              as bool,
      role: null == role
          ? _self.role
          : role // ignore: cast_nullable_to_non_nullable
              as int,
      deviceId: freezed == deviceId
          ? _self.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
