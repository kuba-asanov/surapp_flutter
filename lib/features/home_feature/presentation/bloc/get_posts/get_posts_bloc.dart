import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/post_model/post_model.dart';
import '../../../domain/usecases/get_posts_usecase.dart';

part 'get_posts_event.dart';
part 'get_posts_state.dart';
part 'get_posts_bloc.freezed.dart';

class GetPostsBloc extends Bloc<GetPostsEvent, GetPostsState> {
  final GetPostsUsecase _getPostsUsecase;
  GetPostsBloc({
    required GetPostsUsecase getPostsUsecase,
  })  : _getPostsUsecase = getPostsUsecase,
        super(GetPostsState.initial()) {
    on<GetPostsEvent>((event, emit) async {
      emit(GetPostsLoading());

      final result = await _getPostsUsecase.invoke(GetPostsParams());

      result.fold(
        onFailure: (failure) {
          emit(GetPostsError(errorMessage: failure.message));
        },
        onSuccess: (data) {
          emit(GetPostsFetched(data: data.data));
        },
      );
    });
  }
}
