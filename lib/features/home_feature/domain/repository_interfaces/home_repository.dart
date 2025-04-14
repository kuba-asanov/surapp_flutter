import 'dart:async';

import '../../data/models/response_post_model/response_post_model.dart';

abstract interface class HomeRepository {
  Future<ResponseModel> getPosts();
}
