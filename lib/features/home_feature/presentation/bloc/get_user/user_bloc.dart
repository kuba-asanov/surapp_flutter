// ignore_for_file: sort_constructors_first

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:surapp_flutter/common/utils/empty_usecase_params.dart';
import 'package:surapp_flutter/features/ask_question_feature/domain/models/user_model.dart';
import 'package:surapp_flutter/features/authorization/auth_token/domain/logout_usecase.dart';

import '../../../../authorization/auth_token/domain/get_user_usecase.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_status.dart';
part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final GetUserUseCase _getUserUsecase;
  final LogoutUseCase _logoutUseCase;
  UserBloc({
    required GetUserUseCase getUserUsecase,
    required LogoutUseCase logoutUseCase,
  })  : _getUserUsecase = getUserUsecase,
        _logoutUseCase = logoutUseCase,
        super(UserState.initial()) {
    on<GetUserEvent>((event, emit) async {
      emit(state.copyWith(status: UserStatus.loading));

      final result = await _getUserUsecase.invoke(GetUserParams());

      result.fold(
        onFailure: (failure) {
          emit(state.copyWith(status: UserStatus.failure));
        },
        onSuccess: (user) {
          emit(
            state.copyWith(
              status: UserStatus.loaded,
              user: user,
            ),
          );
        },
      );
    });

    on<LogoutUserEvent>((event, emit) async {
      emit(state.copyWith(status: UserStatus.loading));

      final result = await _logoutUseCase.invoke(EmptyUseCaseParams());

      result.fold(
        onFailure: (failure) {
          emit(state.copyWith(status: UserStatus.failure));
        },
        onSuccess: (_) {
          emit(UserState(status: UserStatus.logedOut));
        },
      );
    });
  }
}
