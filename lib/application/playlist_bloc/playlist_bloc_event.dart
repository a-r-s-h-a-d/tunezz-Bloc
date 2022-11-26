part of 'playlist_bloc_bloc.dart';

@freezed
class PlaylistBlocEvent with _$PlaylistBlocEvent {
  // const factory PlaylistBlocEvent.renamePlaylist({
  //   required String oldPlaylistName,
  //   required String newPlaylistName,
  // }) = RenamePlaylist;

  factory PlaylistBlocEvent.getPlaylistNames() = GetPlaylistListNames;

  factory PlaylistBlocEvent.getPlaylistSongs({
    required String playlistName,
  }) = GetPlaylistSongs;
}
