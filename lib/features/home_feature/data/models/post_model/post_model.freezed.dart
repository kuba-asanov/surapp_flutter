// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostModel {
  int get id;
  String get content;
  String? get answer;
  int get status;
  @JsonKey(name: 'created_at')
  String get createdAt;
  @JsonKey(name: 'updated_at')
  String get updatedAt;
  UserModel get author;
  UserModel? get recipient;

  /// Create a copy of PostModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PostModelCopyWith<PostModel> get copyWith =>
      _$PostModelCopyWithImpl<PostModel>(this as PostModel, _$identity);

  /// Serializes this PostModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PostModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.recipient, recipient) ||
                other.recipient == recipient));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, content, answer, status,
      createdAt, updatedAt, author, recipient);

  @override
  String toString() {
    return 'PostModel(id: $id, content: $content, answer: $answer, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, author: $author, recipient: $recipient)';
  }
}

/// @nodoc
abstract mixin class $PostModelCopyWith<$Res> {
  factory $PostModelCopyWith(PostModel value, $Res Function(PostModel) _then) =
      _$PostModelCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      String content,
      String? answer,
      int status,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      UserModel author,
      UserModel? recipient});

  $UserModelCopyWith<$Res> get author;
  $UserModelCopyWith<$Res>? get recipient;
}

/// @nodoc
class _$PostModelCopyWithImpl<$Res> implements $PostModelCopyWith<$Res> {
  _$PostModelCopyWithImpl(this._self, this._then);

  final PostModel _self;
  final $Res Function(PostModel) _then;

  /// Create a copy of PostModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? answer = freezed,
    Object? status = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? author = null,
    Object? recipient = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      answer: freezed == answer
          ? _self.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _self.author
          : author // ignore: cast_nullable_to_non_nullable
              as UserModel,
      recipient: freezed == recipient
          ? _self.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }

  /// Create a copy of PostModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get author {
    return $UserModelCopyWith<$Res>(_self.author, (value) {
      return _then(_self.copyWith(author: value));
    });
  }

  /// Create a copy of PostModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get recipient {
    if (_self.recipient == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_self.recipient!, (value) {
      return _then(_self.copyWith(recipient: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _PostModel implements PostModel {
  const _PostModel(
      {required this.id,
      required this.content,
      this.answer,
      required this.status,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      required this.author,
      this.recipient});
  factory _PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);

  @override
  final int id;
  @override
  final String content;
  @override
  final String? answer;
  @override
  final int status;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;
  @override
  final UserModel author;
  @override
  final UserModel? recipient;

  /// Create a copy of PostModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PostModelCopyWith<_PostModel> get copyWith =>
      __$PostModelCopyWithImpl<_PostModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PostModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.recipient, recipient) ||
                other.recipient == recipient));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, content, answer, status,
      createdAt, updatedAt, author, recipient);

  @override
  String toString() {
    return 'PostModel(id: $id, content: $content, answer: $answer, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, author: $author, recipient: $recipient)';
  }
}

/// @nodoc
abstract mixin class _$PostModelCopyWith<$Res>
    implements $PostModelCopyWith<$Res> {
  factory _$PostModelCopyWith(
          _PostModel value, $Res Function(_PostModel) _then) =
      __$PostModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      String content,
      String? answer,
      int status,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      UserModel author,
      UserModel? recipient});

  @override
  $UserModelCopyWith<$Res> get author;
  @override
  $UserModelCopyWith<$Res>? get recipient;
}

/// @nodoc
class __$PostModelCopyWithImpl<$Res> implements _$PostModelCopyWith<$Res> {
  __$PostModelCopyWithImpl(this._self, this._then);

  final _PostModel _self;
  final $Res Function(_PostModel) _then;

  /// Create a copy of PostModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? answer = freezed,
    Object? status = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? author = null,
    Object? recipient = freezed,
  }) {
    return _then(_PostModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      answer: freezed == answer
          ? _self.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _self.author
          : author // ignore: cast_nullable_to_non_nullable
              as UserModel,
      recipient: freezed == recipient
          ? _self.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }

  /// Create a copy of PostModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get author {
    return $UserModelCopyWith<$Res>(_self.author, (value) {
      return _then(_self.copyWith(author: value));
    });
  }

  /// Create a copy of PostModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get recipient {
    if (_self.recipient == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_self.recipient!, (value) {
      return _then(_self.copyWith(recipient: value));
    });
  }
}

// dart format on
