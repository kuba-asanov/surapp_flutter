import 'dart:async';
import '../../domain/repository_interfaces/home_repository.dart';
import '../../domain/models/some_data.dart';
import '../data_sources/remote/home_remote_data_source.dart';
import '../mappers/some_data_mapper.dart';

class HomeRepositoryImpl implements HomeRepository {
  HomeRepositoryImpl({
    required HomeRemoteDataSource remoteDataSource,
  }) : _remoteDataSource = remoteDataSource;
  
  final HomeRemoteDataSource _remoteDataSource;
  
  @override
  Future<SomeData> getSomeData() async{
    final response = await _remoteDataSource.getSomeData();
    return response.toEntity();
  }
}
