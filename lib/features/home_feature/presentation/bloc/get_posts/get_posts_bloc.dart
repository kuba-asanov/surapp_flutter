import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/post_model/post_model.dart';
import '../../../domain/usecases/get_posts_usecase.dart';

part 'get_posts_event.dart';
part 'get_posts_state.dart';
part 'get_posts_status.dart';
part 'get_posts_bloc.freezed.dart';

class GetPostsBloc extends Bloc<PostsEvent, GetPostsState> {
  GetPostsBloc({
    required GetPostsUsecase getPostsUsecase,
  })  : _getPostsUsecase = getPostsUsecase,
        super(GetPostsState.initial()) {
    on<GetPostsEvent>((event, emit) async {
      emit(state.copyWith(status: GetPostsStatus.loading));

      final result = await _getPostsUsecase.invoke(event.params);

      result.fold(
        onFailure: (failure) {
          emit(
            state.copyWith(errorMessage: failure.message),
          );
        },
        onSuccess: (data) {
          emit(state.copyWith(
            data: data.data,
            status: GetPostsStatus.loaded,
          ));
        },
      );
    });
    on<AddRemoveCategoryEvent>((event, emit) async {
      emit(state.copyWith(
        categories: state.categories.contains(event.category)
            ? state.categories.where((e) => e != event.category).toList()
            : [...state.categories, event.category],
      ));
      add(GetPostsEvent(
        params: GetPostsParams(
          PostType.allAnswered,
          categories: state.categories,
        ),
      ));
    });
  }
  final GetPostsUsecase _getPostsUsecase;
}
