import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:surapp_flutter/features/home_feature/domain/usecases/get_categories_usercase.dart';

import '../../../data/models/category_model/category_model.dart';

part 'get_categories_event.dart';
part 'get_categories_state.dart';
part 'get_categories_bloc.freezed.dart';

class GetCategoriesBloc extends Bloc<GetCategoriesEvent, GetCategoriesState> {
  GetCategoriesBloc({required GetCategoriesUsecase usercase})
      : _usercase = usercase,
        super(const GetCategoriesState.initial()) {
    on<GetCategoriesEvent>((event, emit) async {
      emit(GetCategoriesLoading());

      final result = await _usercase.invoke(GetCategoriesParams());

      result.fold(
        onFailure: (failure) {
          emit(GetCategoriesFetched(data: []));
        },
        onSuccess: (data) {
          emit(GetCategoriesFetched(data: data.data));
        },
      );
    });
  }

  final GetCategoriesUsecase _usercase;
}
