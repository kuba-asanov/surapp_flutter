import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:surapp_flutter/features/ask_question_feature/domain/models/user_model.dart';

import '../../domain/usecases/get_reciters_usecase.dart';

part 'ask_question_event.dart';
part 'ask_question_state.dart';

class AskQuestionBloc extends Bloc<AskQuestionEvent, AskQuestionState> {
  AskQuestionBloc({
    required GetRecitersUsecase getRecitersUsecase,
  })  : _getRecitersUsecase = getRecitersUsecase,
        super(InitialAskQuestionState()) {
    on<GetRecitersEvent>(_onInit);
  }

  final GetRecitersUsecase _getRecitersUsecase;

  Future<void> _onInit(GetRecitersEvent event, Emitter emit) async {
    emit(LoadingAskQuestionState());

    final result = await _getRecitersUsecase.invoke(GetRecitersParams());

    result.fold(
      onFailure: (failure) {},
      onSuccess: (data) => emit(LoadedAskQuestionState(reciters: data)),
    );
  }
}
