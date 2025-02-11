import 'dart:async';
import '../models/some_data.dart';

abstract interface class {{name.pascalCase()}}Repository {  
    Future<SomeData> getSomeData();
}
