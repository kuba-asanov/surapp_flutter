import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:surapp_flutter/common/network/app_failure.dart';
import 'package:surapp_flutter/core/utils/commands_bloc.dart';

import '../../domain/usecases/get_some_data_usecase.dart';

part 'sign_in_bloc.freezed.dart';
part 'sign_in_event.dart';
part 'sign_in_state.dart';
part 'sign_in_status.dart';
part 'sign_in_ui_commands.dart';

class SignInBloc
    extends CommandsBloc<SignInEvent, SignInState, SignInUiCommands> {
  SignInBloc({
    required SignInUseCase signInUsecase,
  })  : _signInUsecase = signInUsecase,
        super(SignInState.initial()) {
    on<UserNameChangedEvent>(_onUserNameChanged);
    on<PasswordChangedEvent>(_onPasswordChanged);
    on<SignInStartEvent>(_onSignIn);
  }

  final SignInUseCase _signInUsecase;

  FutureOr<void> _onSignIn(SignInStartEvent event, Emitter emit) async {
    emit(state.copyWith(status: SignInStatus.loading));

    final result = await _signInUsecase.invoke(
      SignInParams(
        state.userName,
        state.password,
      ),
    );

    result.fold(
      onFailure: (failure) {
        emit(state.copyWith(status: SignInStatus.failure));
        addUiCommand(
          ShowToastUiCommand(
            type: ToastType.getErrorFromAppFailure(failure),
          ),
        );
      },
      onSuccess: (data) {
        emit(state.copyWith(status: SignInStatus.loaded));
      },
    );
  }

  FutureOr<void> _onUserNameChanged(UserNameChangedEvent event, Emitter emit) {
    emit(state.copyWith(userName: event.username));
  }

  FutureOr<void> _onPasswordChanged(PasswordChangedEvent event, Emitter emit) {
    emit(state.copyWith(password: event.password));
  }
}
