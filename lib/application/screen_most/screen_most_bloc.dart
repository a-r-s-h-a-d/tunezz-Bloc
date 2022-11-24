import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:tunezz_pro/domain/data_model/songs.dart';
import 'package:tunezz_pro/domain/db_functions/db_functions.dart';

part 'screen_most_event.dart';
part 'screen_most_state.dart';
part 'screen_most_bloc.freezed.dart';

class ScreenMostBloc extends Bloc<ScreenMostEvent, ScreenMostState> {
  ScreenMostBloc() : super(ScreenMostState.initial()) {
    Box<List> playListBox = getPlaylistBox();
    on<GetMostSongList>((event, emit) {
      return emit(ScreenMostState(
        mostSongList: playListBox.get('MostPlayed')!.toList().cast<Songs>(),
        mostSongListLength: playListBox.get('MostPlayed')!.toList().length,
      ));
    });
  }
}
