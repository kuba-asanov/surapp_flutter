import 'package:json_annotation/json_annotation.dart';

part 'ask_question_request.g.dart';

@JsonSerializable(createFactory: false)
class AskQuestionRequest {
  const AskQuestionRequest(
    this.content,
    this.recipientId,
    this.categoryIds,
  );

  final String content;
  final int recipientId;
  final List<int>? categoryIds;

  Map<String, dynamic> toJson() => _$AskQuestionRequestToJson(this);
}
