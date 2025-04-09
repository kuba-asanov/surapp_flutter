// ignore_for_file: avoid_renaming_method_parameters
import 'dart:async';
import 'package:surapp_flutter/common/utils/base_usecase.dart';

import '../models/some_data.dart';
import '../repository_interfaces/home_repository.dart';

class GetSomeDataUsecase
    extends BaseUseCase<SomeData, GetSomeDataParams>{
  GetSomeDataUsecase(HomeRepository homeRepository): 
    _repository = homeRepository;

  final HomeRepository _repository;

  @override
  FutureOr<SomeData> makeRequest(GetSomeDataParams params) {
    return _repository.getSomeData();
  }
}

class GetSomeDataParams {
  GetSomeDataParams();
}