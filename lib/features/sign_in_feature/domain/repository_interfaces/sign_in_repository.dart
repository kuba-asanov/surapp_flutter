import 'dart:async';
import '../models/some_data.dart';

abstract interface class SignInRepository {  
    Future<SomeData> getSomeData();
}
