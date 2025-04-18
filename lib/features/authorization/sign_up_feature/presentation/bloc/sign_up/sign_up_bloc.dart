import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/usecases/get_some_data_usecase.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';
part 'sign_up_status.dart';
part 'sign_up_bloc.freezed.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc({
    required SignUpUseCase signUpUseCase,
  })  : _signUpUseCase = signUpUseCase,
        super(SignUpState.initial()) {
    on<SignUpEvent>((event, emit) async {
      emit(state.copyWith(status: SignUpStatus.loading));

      final result = await _signUpUseCase.invoke(SignUpParams(
        event.username,
        event.password,
        event.phone,
        event.email,
      ));

      result.fold(
        onFailure: (failure) {
          emit(state.copyWith(
            status: SignUpStatus.failure,
            errorMessage: failure.message,
          ));
        },
        onSuccess: (res) {
          emit(
            state.copyWith(
              status: SignUpStatus.loaded,
            ),
          );
        },
      );
    });
  }
  final SignUpUseCase _signUpUseCase;
}
