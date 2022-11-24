part of 'screen_most_bloc.dart';

@freezed
class ScreenMostState with _$ScreenMostState {
  const factory ScreenMostState({
    required List<Songs> mostSongList,
    required int mostSongListLength,
  }) = _ScreenMostState;
  factory ScreenMostState.initial() {
    Box<List> playListBox = getPlaylistBox();
    return ScreenMostState(
      mostSongList: playListBox.get('MostPlayed')!.toList().cast<Songs>(),
      mostSongListLength: playListBox.get('MostPlayed')!.toList().length,
    );
  }
}
