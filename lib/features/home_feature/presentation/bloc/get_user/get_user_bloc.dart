// ignore_for_file: sort_constructors_first

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../authorization/auth_token/domain/get_user_usecase.dart';
import '../../../../authorization/auth_token/domain/models/user_model/get_user_model.dart';

part 'get_user_event.dart';
part 'get_user_state.dart';
part 'get_user_bloc.freezed.dart';

class GetUserBloc extends Bloc<GetUserEvent, GetUserState> {
  final GetUserUseCase _getUserUsecase;
  bool _isUstaz = false;
  GetUserBloc({
    required GetUserUseCase getUserUsecase,
  })  : _getUserUsecase = getUserUsecase,
        super(GetUserState.initial()) {
    on<GetUserEvent>((event, emit) async {
      emit(GetUserLoading());

      final result = await _getUserUsecase.invoke(GetUserParams());

      result.fold(
        onFailure: (failure) {
          emit(GetUserError(errorMessage: failure.message));
        },
        onSuccess: (data) {
          if (data.role == 1) {
            _isUstaz = true;
          }
          emit(GetUserFetched(user: data));
        },
      );
    });
  }
  bool get isUstaz => _isUstaz;
}
