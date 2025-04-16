import 'package:json_annotation/json_annotation.dart';

part 'ask_question_request.g.dart';

@JsonSerializable(createFactory: false)
class AskQuestionRequest {
  const AskQuestionRequest(
    this.content,
    this.recipientId,
  );

  final String content;
  final int recipientId;

  Map<String, dynamic> toJson() => _$AskQuestionRequestToJson(this);
}
