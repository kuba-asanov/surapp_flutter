import 'dart:async';
import '../usecases/get_some_data_usecase.dart';

abstract interface class SignUpRepository {
  Future<void> signUp(SignUpParams params);
}
