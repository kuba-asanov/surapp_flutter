// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_questions_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetQuestionsState {
  GetQuestionsStatus get status;
  List<PostModel> get questions;
  String? get errorMessage;
  String get answer;

  /// Create a copy of GetQuestionsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GetQuestionsStateCopyWith<GetQuestionsState> get copyWith =>
      _$GetQuestionsStateCopyWithImpl<GetQuestionsState>(
          this as GetQuestionsState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetQuestionsState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.questions, questions) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(questions), errorMessage, answer);

  @override
  String toString() {
    return 'GetQuestionsState(status: $status, questions: $questions, errorMessage: $errorMessage, answer: $answer)';
  }
}

/// @nodoc
abstract mixin class $GetQuestionsStateCopyWith<$Res> {
  factory $GetQuestionsStateCopyWith(
          GetQuestionsState value, $Res Function(GetQuestionsState) _then) =
      _$GetQuestionsStateCopyWithImpl;
  @useResult
  $Res call(
      {GetQuestionsStatus status,
      List<PostModel> questions,
      String? errorMessage,
      String answer});
}

/// @nodoc
class _$GetQuestionsStateCopyWithImpl<$Res>
    implements $GetQuestionsStateCopyWith<$Res> {
  _$GetQuestionsStateCopyWithImpl(this._self, this._then);

  final GetQuestionsState _self;
  final $Res Function(GetQuestionsState) _then;

  /// Create a copy of GetQuestionsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? questions = null,
    Object? errorMessage = freezed,
    Object? answer = null,
  }) {
    return _then(_self.copyWith(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as GetQuestionsStatus,
      questions: null == questions
          ? _self.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<PostModel>,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      answer: null == answer
          ? _self.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _GetQuestionsState extends GetQuestionsState {
  const _GetQuestionsState(
      {required this.status,
      final List<PostModel> questions = const [],
      this.errorMessage,
      this.answer = ''})
      : _questions = questions,
        super._();

  @override
  final GetQuestionsStatus status;
  final List<PostModel> _questions;
  @override
  @JsonKey()
  List<PostModel> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  @override
  final String? errorMessage;
  @override
  @JsonKey()
  final String answer;

  /// Create a copy of GetQuestionsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GetQuestionsStateCopyWith<_GetQuestionsState> get copyWith =>
      __$GetQuestionsStateCopyWithImpl<_GetQuestionsState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetQuestionsState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_questions), errorMessage, answer);

  @override
  String toString() {
    return 'GetQuestionsState(status: $status, questions: $questions, errorMessage: $errorMessage, answer: $answer)';
  }
}

/// @nodoc
abstract mixin class _$GetQuestionsStateCopyWith<$Res>
    implements $GetQuestionsStateCopyWith<$Res> {
  factory _$GetQuestionsStateCopyWith(
          _GetQuestionsState value, $Res Function(_GetQuestionsState) _then) =
      __$GetQuestionsStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {GetQuestionsStatus status,
      List<PostModel> questions,
      String? errorMessage,
      String answer});
}

/// @nodoc
class __$GetQuestionsStateCopyWithImpl<$Res>
    implements _$GetQuestionsStateCopyWith<$Res> {
  __$GetQuestionsStateCopyWithImpl(this._self, this._then);

  final _GetQuestionsState _self;
  final $Res Function(_GetQuestionsState) _then;

  /// Create a copy of GetQuestionsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? questions = null,
    Object? errorMessage = freezed,
    Object? answer = null,
  }) {
    return _then(_GetQuestionsState(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as GetQuestionsStatus,
      questions: null == questions
          ? _self._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<PostModel>,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      answer: null == answer
          ? _self.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
