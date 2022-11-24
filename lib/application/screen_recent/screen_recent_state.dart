part of 'screen_recent_bloc.dart';

@freezed
class ScreenRecentState with _$ScreenRecentState {
  const factory ScreenRecentState({
    required List<Songs> recentSongList,
    required int recentSongListLength,
  }) = _ScreenRecentState;
  factory ScreenRecentState.initial() {
    Box<List> playListBox = getPlaylistBox();
    return ScreenRecentState(
        recentSongList: playListBox.get('Recents')!.toList().cast<Songs>(),
        recentSongListLength: playListBox.get('Recents')!.toList().length);
  }
}
