import 'dart:async';
import 'package:surapp_flutter/features/ask_question_feature/domain/models/user_model.dart';

import '../../domain/repository_interfaces/ask_question_repository.dart';
import '../data_sources/remote/ustaz_picker_remote_data_source.dart';

class UstazPickerRepositoryImpl implements UstazPickerRepository {
  UstazPickerRepositoryImpl({
    required UstazPickerRemoteDataSource remoteDataSource,
  }) : _remoteDataSource = remoteDataSource;
  
  final UstazPickerRemoteDataSource _remoteDataSource;
  
  @override
  Future<List<UserModel>> getReciters() async{
    return _remoteDataSource.getReciters();
  }
}
