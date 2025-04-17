import '../../domain/models/some_data.dart';
import '../models/some_data_response/some_data_response.dart';

extension SomeDataMapper on SomeDataResponse {
  SomeData toEntity() => SomeData();
}
