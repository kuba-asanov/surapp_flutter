// ignore_for_file: invalid_annotation_target

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:surapp_flutter/features/home_feature/data/models/category_model/category_model.dart';

import '../meta_model/meta_model.dart';


part 'response_categories_model.freezed.dart';
part 'response_categories_model.g.dart';

@freezed
abstract class ResponseCategoriesModel with _$ResponseCategoriesModel {
  const factory ResponseCategoriesModel({
    required List<CategoryModel> data,
    required MetaModel meta,
  }) = _ResponseCategoriesPostModel;

  factory ResponseCategoriesModel.fromJson(Map<String, Object?> json) =>
      _$ResponseCategoriesModelFromJson(json);
}
