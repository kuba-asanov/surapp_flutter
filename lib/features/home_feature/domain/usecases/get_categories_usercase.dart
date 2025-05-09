// ignore_for_file: avoid_renaming_method_parameters
import 'dart:async';
import 'package:surapp_flutter/common/utils/base_usecase.dart';
import 'package:surapp_flutter/features/home_feature/data/models/response_categories/response_categories_model.dart';

import '../repository_interfaces/home_repository.dart';

class GetCategoriesUsecase
    extends BaseUseCase<ResponseCategoriesModel, GetCategoriesParams> {
  GetCategoriesUsecase(HomeRepository homeRepository)
      : _repository = homeRepository;

  final HomeRepository _repository;

  @override
  FutureOr<ResponseCategoriesModel> makeRequest(GetCategoriesParams params) {
    return _repository.getCategories();
  }
}

class GetCategoriesParams {
  GetCategoriesParams();
}
