part of 'screen_search_bloc.dart';

@freezed
class ScreenSearchState with _$ScreenSearchState {
  const factory ScreenSearchState({
    required List<Songs> allSongs,
    required List<Songs> searchfoundSongs,
  }) = _ScreenSearchState;

  factory ScreenSearchState.initial() {
    return const ScreenSearchState(
      allSongs: [],
      searchfoundSongs: [],
    );
  }
}
