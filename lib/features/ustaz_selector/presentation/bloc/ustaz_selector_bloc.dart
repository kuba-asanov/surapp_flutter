import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';
import 'package:surapp_flutter/features/ask_question_feature/domain/models/user_model.dart';
import 'package:surapp_flutter/features/ustaz_selector/domain/use_cases/get_reciters_use_case.dart';

part 'ustaz_selector_bloc.freezed.dart';
part 'ustaz_selector_event.dart';
part 'ustaz_selector_state.dart';

class UstazPickerBloc extends Bloc<UstazPickerEvent, UstazPickerState> {
  UstazPickerBloc({
    required this.getRecitersUseCase,
  }) : super(const UstazPickerState()) {
    on<ListScrolledEvent>((event, emit) => _onListScrolled(emit));
    on<GetRecitersEvent>(
      _onSearchFieldChanged,
      transformer: (events, mapper) {
        return events
            .debounceTime(const Duration(milliseconds: 500))
            .asyncExpand(mapper);
      },
    );
  }

  final GetRecitersUseCase getRecitersUseCase;

  Future<void> _onSearchFieldChanged(
    GetRecitersEvent event,
    Emitter<UstazPickerState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final result = await getRecitersUseCase.invoke(
      GetRecitersUseCaseParams(
        search: event.query,
        page: 0,
      ),
    );
    result.fold(
      onFailure: (_) {
        emit(state.copyWith(isLoading: false));
      },
      onSuccess: (reciters) {
        emit(
          state.copyWith(
            reciters: reciters,
            page: 0,
            query: event.query,
            isLoading: false,
            last: reciters.length < 50,
          ),
        );
      },
    );
  }

  Future<void> _onListScrolled(Emitter<UstazPickerState> emit) async {
    final result = await getRecitersUseCase.invoke(
      GetRecitersUseCaseParams(
        search: state.query,
        page: state.page + 1,
      ),
    );
    result.fold(
      onFailure: (_) {},
      onSuccess: (reciters) {
        emit(
          state.copyWith(
            reciters: state.reciters.toList()..addAll(reciters),
            page: state.page + 1,
            last: reciters.length < 50,
          ),
        );
      },
    );
  }
}
