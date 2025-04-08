import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/models/some_data.dart';
import '../../domain/usecases/get_some_data_usecase.dart';

part 'sign_in_bloc.freezed.dart';
part 'sign_in_event.dart';
part 'sign_in_state.dart';
part 'sign_in_status.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc({
    required GetSomeDataUsecase getSomeDataUsecase,
  }): 
      _getSomeDataUsecase = getSomeDataUsecase,
      super(SignInState.initial()){
    on<InitEvent>(_onInit);
  }

  final GetSomeDataUsecase _getSomeDataUsecase;

  Future<void> _onInit(InitEvent event, Emitter emit) async{
    emit(SignInState(status: SignInStatus.loading)); 
    
    final result = await _getSomeDataUsecase.invoke(GetSomeDataParams());

    result.fold(
      onFailure: (failure) {},   
      onSuccess: (data) => emit(SignInState(status: SignInStatus.loaded)),    
    );
  }
}
