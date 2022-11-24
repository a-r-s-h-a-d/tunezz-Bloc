import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:tunezz_pro/domain/data_model/songs.dart';
import 'package:tunezz_pro/domain/db_functions/db_functions.dart';

part 'screen_favorite_event.dart';
part 'screen_favorite_state.dart';
part 'screen_favorite_bloc.freezed.dart';

class ScreenFavoriteBloc
    extends Bloc<ScreenFavoriteEvent, ScreenFavoriteState> {
  ScreenFavoriteBloc() : super(ScreenFavoriteState.initial()) {
    Box<List> playListBox = getPlaylistBox();
    on<GetFavoriteList>((event, emit) {
      return emit(ScreenFavoriteState(
          favSongList: playListBox.get('Favorites')!.toList().cast<Songs>(),
          favSongListLength: playListBox.get('Favorites')!.toList().length));
    });
  }
}
