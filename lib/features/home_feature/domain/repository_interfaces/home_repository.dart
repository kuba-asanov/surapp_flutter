import 'dart:async';
import '../models/some_data.dart';

abstract interface class HomeRepository {  
    Future<SomeData> getSomeData();
}
