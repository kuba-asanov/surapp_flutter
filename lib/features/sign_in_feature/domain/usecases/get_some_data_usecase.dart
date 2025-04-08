// ignore_for_file: avoid_renaming_method_parameters
import 'dart:async';
import 'package:common_base/usecase/usecase.dart';

import '../models/some_data.dart';
import '../repository_interfaces/signIn_repository.dart';

class GetSomeDataUsecase
    extends UseCase<SomeData, GetSomeDataParams>{
  GetSomeDataUsecase(SignInRepository signInRepository): 
    _repository = signInRepository;

  final SignInRepository _repository;

  @override
  FutureOr<SomeData> makeRequest(GetSomeDataParams params) {
    return _repository.getSomeData();
  }
}

class GetSomeDataParams {
  GetSomeDataParams();
}