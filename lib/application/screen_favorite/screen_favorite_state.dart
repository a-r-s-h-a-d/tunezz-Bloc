part of 'screen_favorite_bloc.dart';

@freezed
class ScreenFavoriteState with _$ScreenFavoriteState {
  const factory ScreenFavoriteState({
    required List<Songs> favSongList,
    required int favSongListLength,
  }) = _ScreenFavoriteState;
  factory ScreenFavoriteState.initial() {
    Box<List> playListBox = getPlaylistBox();
    return ScreenFavoriteState(
        favSongList: playListBox.get('Favorites')!.toList().cast<Songs>(),
        favSongListLength: playListBox.get('Favorites')!.toList().length);
  }
}
