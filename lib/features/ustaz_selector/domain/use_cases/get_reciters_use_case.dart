import 'dart:async';

import 'package:surapp_flutter/common/utils/base_usecase.dart';
import 'package:surapp_flutter/features/ask_question_feature/domain/models/user_model.dart';
import 'package:surapp_flutter/features/ustaz_selector/domain/repository_interfaces/ask_question_repository.dart';

class GetRecitersUseCase
    extends BaseUseCase<List<UserModel>, GetRecitersUseCaseParams> {
  GetRecitersUseCase({required UstazPickerRepository repository})
      : _repository = repository;

  final UstazPickerRepository _repository;

  @override
  FutureOr<List<UserModel>> makeRequest(
    GetRecitersUseCaseParams params,
  ) async {
    return await _repository.getReciters();
  }
}

class GetRecitersUseCaseParams {
  GetRecitersUseCaseParams({
    required this.search,
    required this.page,
    this.size = 50,
  });

  final String search;
  final int page;
  final int size;
}
