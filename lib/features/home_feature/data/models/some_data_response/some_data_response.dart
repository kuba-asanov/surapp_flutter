import 'package:json_annotation/json_annotation.dart';

part 'some_data_response.g.dart';

@JsonSerializable(createToJson: false)
class SomeDataResponse {
  const SomeDataResponse();

  factory SomeDataResponse.fromJson(Map<String, dynamic> json) =>
      _$SomeDataResponseFromJson(json);
}
