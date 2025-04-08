{{#isUseFreezed}}import 'package:freezed_annotation/freezed_annotation.dart';{{/isUseFreezed}}
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/usecases/get_some_data_{{#isUseModelAsList}}list_{{/isUseModelAsList}}usecase.dart';
{{#isUseFreezed}}import '../../domain/models/some_data.dart';{{/isUseFreezed}}
part '{{name.snakeCase()}}_event.dart';
part '{{name.snakeCase()}}_state.dart';
{{#isUseFreezed}}part '{{name.snakeCase()}}_status.dart';
part '{{name.snakeCase()}}_bloc.freezed.dart';{{/isUseFreezed}}

class {{name.pascalCase()}}Bloc extends Bloc<{{name.pascalCase()}}Event, {{name.pascalCase()}}State> {
  {{name.pascalCase()}}Bloc({
    required GetSomeDataUsecase getSomeDataUsecase,
  }): 
      _getSomeDataUsecase = getSomeDataUsecase,
      super({{^isUseFreezed}}Initial{{name.pascalCase()}}State(){{/isUseFreezed}}{{#isUseFreezed}}{{name.pascalCase()}}State.initial(){{/isUseFreezed}}){
    on<InitEvent>(_onInit);
  }

  final GetSomeDataUsecase _getSomeDataUsecase;

  Future<void> _onInit(InitEvent event, Emitter emit) async{
    emit({{#isUseFreezed}}{{name.pascalCase()}}State(status: {{name.pascalCase()}}Status.loading){{/isUseFreezed}}{{^isUseFreezed}}Loading{{name.pascalCase()}}State(){{/isUseFreezed}}); 
    
    final result = await _getSomeDataUsecase.invoke(GetSomeDataParams());

    result.fold(
      onFailure: (failure) {},   
      onSuccess: (data) => emit({{^isUseFreezed}}Loaded{{name.pascalCase()}}State(){{/isUseFreezed}}{{#isUseFreezed}}{{name.pascalCase()}}State(status: {{name.pascalCase()}}Status.loaded){{/isUseFreezed}}),    
    );
  }
}
