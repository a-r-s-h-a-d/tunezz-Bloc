import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:tunezz_pro/domain/data_model/songs.dart';
import 'package:tunezz_pro/domain/db_functions/db_functions.dart';

part 'screen_recent_event.dart';
part 'screen_recent_state.dart';
part 'screen_recent_bloc.freezed.dart';

class ScreenRecentBloc extends Bloc<ScreenRecentEvent, ScreenRecentState> {
  ScreenRecentBloc() : super(ScreenRecentState.initial()) {
    Box<List> playListBox = getPlaylistBox();
    on<GetRecentList>((event, emit) {
      return emit(ScreenRecentState(
          recentSongList: playListBox.get('Recents')!.toList().cast<Songs>(),
          recentSongListLength: playListBox.get('Recents')!.toList().length));
    });
  }
}
