part of 'playlist_bloc_bloc.dart';

@freezed
class PlaylistBlocEvent with _$PlaylistBlocEvent {
  const factory PlaylistBlocEvent.renamePlaylist({
    required String oldPlaylistName,
    required String newPlaylistName,
  }) = RenamePlaylist;
  factory PlaylistBlocEvent.playlistListNames() = PlaylistListNames;
  factory PlaylistBlocEvent.songList({
    required String playlistName,
  }) = SongList;
}
