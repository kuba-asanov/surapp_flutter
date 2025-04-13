import 'dart:async';
import 'package:surapp_flutter/features/home_feature/data/models/response_post_model/response_post_model.dart';

import '../../domain/repository_interfaces/home_repository.dart';
import '../data_sources/remote/home_remote_data_source.dart';

class HomeRepositoryImpl implements HomeRepository {
  HomeRepositoryImpl({
    required HomeRemoteDataSource remoteDataSource,
  }) : _remoteDataSource = remoteDataSource;

  final HomeRemoteDataSource _remoteDataSource;

  

  @override
  Future<ResponsePostModel> getPosts() async {
    final response = await _remoteDataSource.getPosts();
    return response;
  }
}
