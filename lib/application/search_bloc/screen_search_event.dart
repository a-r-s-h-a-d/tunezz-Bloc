part of 'screen_search_bloc.dart';

@freezed
class ScreenSearchEvent with _$ScreenSearchEvent {
  const factory ScreenSearchEvent.initialStateEvent() = InitialStateEvent;
  factory ScreenSearchEvent.searchStateEvent({required String enteredSong}) =
      SearchStateEvent;
}
