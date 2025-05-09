import 'dart:developer';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:surapp_flutter/features/ask_question_feature/domain/models/ask_question_request.dart';
import 'package:surapp_flutter/features/ask_question_feature/domain/models/user_model.dart';

import '../../domain/usecases/ask_question_usecase.dart';

part 'ask_question_bloc.freezed.dart';
part 'ask_question_event.dart';
part 'ask_question_state.dart';
part 'ask_question_status.dart';

class AskQuestionBloc extends Bloc<AskQuestionEvent, AskQuestionState> {
  AskQuestionBloc({
    required AskQuestionUsecase askQuestionUsecase,
  })  : _askQuestionUsecase = askQuestionUsecase,
        super(AskQuestionState.initial()) {
    on<SelectUstazEvent>(_onSelectUstaz);
    on<TextChangedEvent>(_onTextChanged);
    on<CreateQuestionEvent>(_onCreateQuestion);
    on<AddRemoveCategoryEvent>((event, emit) {
      emit(state.copyWith(
        categories: state.categories.contains(event.categoryId)
            ? state.categories.where((e) => e != event.categoryId).toList()
            : [...state.categories, event.categoryId],
      ));
      log(state.categories.toString());
    });
  }

  final AskQuestionUsecase _askQuestionUsecase;

  Future<void> _onCreateQuestion(
      CreateQuestionEvent event, Emitter emit) async {
    final reciterId = state.selectedReciter?.id;
    if (reciterId != null) {
      emit(state.copyWith(status: AskQuestionStatus.loading));

      final result = await _askQuestionUsecase.invoke(AskQuestionRequest(
        state.question,
        reciterId,
        state.categories,
      ));

      result.fold(
        onFailure: (failure) {},
        onSuccess: (data) => emit(
          state.copyWith(status: AskQuestionStatus.loaded),
        ),
      );
    }
  }

  Future<void> _onSelectUstaz(SelectUstazEvent event, Emitter emit) async {
    emit(state.copyWith(selectedReciter: event.user));
  }

  Future<void> _onTextChanged(TextChangedEvent event, Emitter emit) async {
    emit(state.copyWith(question: event.text));
  }
}
