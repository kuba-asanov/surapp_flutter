import 'dart:async';
import '../../domain/repository_interfaces/{{name.snakeCase()}}_repository.dart';
import '../../domain/models/some_data.dart';
import '../data_sources/remote/{{name.snakeCase()}}_remote_data_source.dart';
import '../mappers/some_data_mapper.dart';

class {{name.pascalCase()}}RepositoryImpl implements {{name.pascalCase()}}Repository {
  {{name.pascalCase()}}RepositoryImpl({
    required {{name.pascalCase()}}RemoteDataSource remoteDataSource,
  }) : _remoteDataSource = remoteDataSource;
  
  final {{name.pascalCase()}}RemoteDataSource _remoteDataSource;
  
  @override
  Future<SomeData> getSomeData() async{
    final response = await _remoteDataSource.getSomeData();
    return response.toEntity();
  }
}
