part of 'ustaz_selector_bloc.dart';

@freezed
abstract class UstazPickerState with _$UstazPickerState {
  const factory UstazPickerState({
    @Default([]) List<UserModel> reciters,
    @Default('') String query,
    @Default(0) int page,
    @Default(false) bool last,
    @Default(true) bool isLoading,
  }) = _UstazPickerState;
}
