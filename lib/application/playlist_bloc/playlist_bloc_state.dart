part of 'playlist_bloc_bloc.dart';

@freezed
class PlaylistBlocState with _$PlaylistBlocState {
  const factory PlaylistBlocState({
    required String playlistName,
    required List<Songs> playlistSongList,
    required List playlistListNames,
  }) = _PlaylistBlocState;

  factory PlaylistBlocState.initial() {
    Box<List> playlistBox = getPlaylistBox();
    final List<dynamic> keys = playlistBox.keys.toList();
    keys.removeWhere((key) => key == 'Favourites');
    keys.removeWhere((key) => key == 'Recent');
    keys.removeWhere((key) => key == 'Most Played');
    return PlaylistBlocState(
      playlistName: '',
      playlistSongList: [],
      playlistListNames: keys,
    );
  }
}
