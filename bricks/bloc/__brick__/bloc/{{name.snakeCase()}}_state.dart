part of '{{name.snakeCase()}}_bloc.dart';

{{#isUseFreezed}}@freezed
class {{name.pascalCase()}}State with _${{name.pascalCase()}}State {
  const factory {{name.pascalCase()}}State({
    required {{name.pascalCase()}}Status status,
    SomeData? someData,
  }) = _{{name.pascalCase()}}State;

  factory {{name.pascalCase()}}State.initial() 
    => const {{name.pascalCase()}}State(status: {{name.pascalCase()}}Status.initial);

  const {{name.pascalCase()}}State._();
}{{/isUseFreezed}}
{{^isUseFreezed}}sealed class {{name.pascalCase()}}State extends Equatable {
  const {{name.pascalCase()}}State();
  
  @override
  List<Object?> get props => [];
}

class Initial{{name.pascalCase()}}State extends {{name.pascalCase()}}State {}

class Loading{{name.pascalCase()}}State extends {{name.pascalCase()}}State {}

class Loaded{{name.pascalCase()}}State extends {{name.pascalCase()}}State {}{{/isUseFreezed}}
