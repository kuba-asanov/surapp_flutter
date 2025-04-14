part of 'ustaz_selector_bloc.dart';

sealed class UstazPickerEvent {}

class GetRecitersEvent extends UstazPickerEvent {
  GetRecitersEvent({required this.query});

  final String query;
}

class ListScrolledEvent extends UstazPickerEvent {}
