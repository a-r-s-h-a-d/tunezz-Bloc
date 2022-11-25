import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:tunezz_pro/domain/data_model/songs.dart';
import 'package:tunezz_pro/domain/db_functions/db_functions.dart';

part 'screen_search_event.dart';
part 'screen_search_state.dart';
part 'screen_search_bloc.freezed.dart';

class ScreenSearchBloc extends Bloc<ScreenSearchEvent, ScreenSearchState> {
  ScreenSearchBloc() : super(ScreenSearchState.initial()) {
    Box<Songs> songBox = getSongBox();
    on<InitialStateEvent>((event, emit) {
      return emit(ScreenSearchState(
        allSongs: songBox.values.toList(),
        searchfoundSongs: songBox.values.toList(),
      ));
    });

    on<SearchStateEvent>((event, emit) {
      List<Songs> searchSongList = state.searchfoundSongs;
      searchSongList = state.allSongs
          .where((song) => song.title
              .toLowerCase()
              .contains(event.enteredSong.toLowerCase()))
          .toList();
      return emit(ScreenSearchState(
        allSongs: state.allSongs,
        searchfoundSongs: searchSongList,
      ));
    });
  }
}
