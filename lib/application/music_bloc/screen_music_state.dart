part of 'screen_music_bloc.dart';

@freezed
class ScreenMusicState with _$ScreenMusicState {
  const factory ScreenMusicState({required List<Songs> songList}) =
      _ScreenMusicState;

  factory ScreenMusicState.initial() {
    final Box<Songs> songBox = getSongBox();
    return ScreenMusicState(songList: songBox.values.toList());
  }
}
