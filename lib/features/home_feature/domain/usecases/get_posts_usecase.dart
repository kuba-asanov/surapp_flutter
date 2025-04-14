// ignore_for_file: avoid_renaming_method_parameters
import 'dart:async';
import 'package:surapp_flutter/common/utils/base_usecase.dart';
import 'package:surapp_flutter/features/home_feature/data/models/response_post_model/response_post_model.dart';

import '../repository_interfaces/home_repository.dart';

class GetPostsUsecase extends BaseUseCase<ResponseModel, GetPostsParams> {
  GetPostsUsecase(HomeRepository homeRepository) : _repository = homeRepository;

  final HomeRepository _repository;

  @override
  FutureOr<ResponseModel> makeRequest(GetPostsParams params) {
    return _repository.getPosts();
  }
}

class GetPostsParams {
  GetPostsParams();
}
