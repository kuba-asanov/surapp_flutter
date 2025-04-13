// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'meta_model.freezed.dart';
part 'meta_model.g.dart';

@freezed
abstract class MetaModel with _$MetaModel {
  const factory MetaModel({
    required int page,
    required int itemsCount,
    required int limit,
    required int pagesCount,
  }) = _MetaModel;

  factory MetaModel.fromJson(Map<String, Object?> json) =>
      _$MetaModelFromJson(json);
}
