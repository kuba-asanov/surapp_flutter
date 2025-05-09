// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ask_question_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AskQuestionState {
  AskQuestionStatus get status;
  String get question;
  UserModel? get selectedReciter;
  List<int> get categories;

  /// Create a copy of AskQuestionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AskQuestionStateCopyWith<AskQuestionState> get copyWith =>
      _$AskQuestionStateCopyWithImpl<AskQuestionState>(
          this as AskQuestionState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AskQuestionState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.selectedReciter, selectedReciter) ||
                other.selectedReciter == selectedReciter) &&
            const DeepCollectionEquality()
                .equals(other.categories, categories));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, question,
      selectedReciter, const DeepCollectionEquality().hash(categories));

  @override
  String toString() {
    return 'AskQuestionState(status: $status, question: $question, selectedReciter: $selectedReciter, categories: $categories)';
  }
}

/// @nodoc
abstract mixin class $AskQuestionStateCopyWith<$Res> {
  factory $AskQuestionStateCopyWith(
          AskQuestionState value, $Res Function(AskQuestionState) _then) =
      _$AskQuestionStateCopyWithImpl;
  @useResult
  $Res call(
      {AskQuestionStatus status,
      String question,
      UserModel? selectedReciter,
      List<int> categories});

  $UserModelCopyWith<$Res>? get selectedReciter;
}

/// @nodoc
class _$AskQuestionStateCopyWithImpl<$Res>
    implements $AskQuestionStateCopyWith<$Res> {
  _$AskQuestionStateCopyWithImpl(this._self, this._then);

  final AskQuestionState _self;
  final $Res Function(AskQuestionState) _then;

  /// Create a copy of AskQuestionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? question = null,
    Object? selectedReciter = freezed,
    Object? categories = null,
  }) {
    return _then(_self.copyWith(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as AskQuestionStatus,
      question: null == question
          ? _self.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      selectedReciter: freezed == selectedReciter
          ? _self.selectedReciter
          : selectedReciter // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      categories: null == categories
          ? _self.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }

  /// Create a copy of AskQuestionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get selectedReciter {
    if (_self.selectedReciter == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_self.selectedReciter!, (value) {
      return _then(_self.copyWith(selectedReciter: value));
    });
  }
}

/// @nodoc

class _AskQuestionState extends AskQuestionState {
  const _AskQuestionState(
      {required this.status,
      this.question = "",
      this.selectedReciter,
      final List<int> categories = const []})
      : _categories = categories,
        super._();

  @override
  final AskQuestionStatus status;
  @override
  @JsonKey()
  final String question;
  @override
  final UserModel? selectedReciter;
  final List<int> _categories;
  @override
  @JsonKey()
  List<int> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  /// Create a copy of AskQuestionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AskQuestionStateCopyWith<_AskQuestionState> get copyWith =>
      __$AskQuestionStateCopyWithImpl<_AskQuestionState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AskQuestionState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.selectedReciter, selectedReciter) ||
                other.selectedReciter == selectedReciter) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, question,
      selectedReciter, const DeepCollectionEquality().hash(_categories));

  @override
  String toString() {
    return 'AskQuestionState(status: $status, question: $question, selectedReciter: $selectedReciter, categories: $categories)';
  }
}

/// @nodoc
abstract mixin class _$AskQuestionStateCopyWith<$Res>
    implements $AskQuestionStateCopyWith<$Res> {
  factory _$AskQuestionStateCopyWith(
          _AskQuestionState value, $Res Function(_AskQuestionState) _then) =
      __$AskQuestionStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {AskQuestionStatus status,
      String question,
      UserModel? selectedReciter,
      List<int> categories});

  @override
  $UserModelCopyWith<$Res>? get selectedReciter;
}

/// @nodoc
class __$AskQuestionStateCopyWithImpl<$Res>
    implements _$AskQuestionStateCopyWith<$Res> {
  __$AskQuestionStateCopyWithImpl(this._self, this._then);

  final _AskQuestionState _self;
  final $Res Function(_AskQuestionState) _then;

  /// Create a copy of AskQuestionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? question = null,
    Object? selectedReciter = freezed,
    Object? categories = null,
  }) {
    return _then(_AskQuestionState(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as AskQuestionStatus,
      question: null == question
          ? _self.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      selectedReciter: freezed == selectedReciter
          ? _self.selectedReciter
          : selectedReciter // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      categories: null == categories
          ? _self._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }

  /// Create a copy of AskQuestionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get selectedReciter {
    if (_self.selectedReciter == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_self.selectedReciter!, (value) {
      return _then(_self.copyWith(selectedReciter: value));
    });
  }
}

// dart format on
