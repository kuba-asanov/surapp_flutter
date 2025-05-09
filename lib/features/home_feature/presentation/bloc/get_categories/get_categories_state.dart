part of 'get_categories_bloc.dart';

@freezed
class GetCategoriesState with _$GetCategoriesState {
  const factory GetCategoriesState.initial() = GetCategoriesInitial;
  const factory GetCategoriesState.loading() = GetCategoriesLoading;
  const factory GetCategoriesState.error({
    required String errorMessage,
  }) = GetCategoriesError;
  const factory GetCategoriesState.fetched({
    required List<CategoryModel> data,
  }) = GetCategoriesFetched;
}
