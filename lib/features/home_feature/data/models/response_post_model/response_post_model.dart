// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:surapp_flutter/features/home_feature/data/models/post_model/post_model.dart';

import '../meta_model/meta_model.dart';

part 'response_post_model.freezed.dart';
part 'response_post_model.g.dart';

@freezed
abstract class ResponsePostModel with _$ResponsePostModel {
  const factory ResponsePostModel({
    required List<PostModel> data,
    required MetaModel meta,
  }) = _ResponsePostModel;

  factory ResponsePostModel.fromJson(Map<String, Object?> json) =>
      _$ResponsePostModelFromJson(json);
}
