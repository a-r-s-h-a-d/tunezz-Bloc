import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:tunezz_pro/domain/data_model/songs.dart';
import 'package:tunezz_pro/domain/db_functions/db_functions.dart';

part 'playlist_bloc_event.dart';
part 'playlist_bloc_state.dart';
part 'playlist_bloc_bloc.freezed.dart';

class PlaylistBlocBloc extends Bloc<PlaylistBlocEvent, PlaylistBlocState> {
  PlaylistBlocBloc() : super(PlaylistBlocState.initial()) {
    Box<List> playlistBox = getPlaylistBox();
    // on<RenamePlaylist>((event, emit) async {
    //   List<Songs> newPlaylistSongs =
    //       playlistBox.get(state.playlistName)!.toList().cast<Songs>();
    //   await playlistBox.put(event.newPlaylistName, newPlaylistSongs);
    //   await playlistBox.delete(event.oldPlaylistName);
    //   return emit(PlaylistBlocState(
    //     playlistName: event.newPlaylistName,
    //     playlistSongList: newPlaylistSongs,
    //     playlistListNames: state.playlistListNames,
    //   ));
    // });
    on<GetPlaylistSongs>((event, emit) {
      List<Songs> playlistBoxSongs =
          playlistBox.get(event.playlistName)!.toList().cast<Songs>();

      emit(PlaylistBlocState(
          playlistListNames: state.playlistListNames,
          playlistName: event.playlistName,
          playlistSongList: playlistBoxSongs));
    });
    on<GetPlaylistListNames>((event, emit) {
      List<dynamic> keys = playlistBox.keys.toList();
      keys.remove('Favorites');
      keys.remove('MostPlayed');
      keys.remove('Recents');
      return emit(
        PlaylistBlocState(
          playlistName: state.playlistName,
          playlistSongList: state.playlistSongList,
          playlistListNames: keys,
        ),
      );
    });
  }
}
