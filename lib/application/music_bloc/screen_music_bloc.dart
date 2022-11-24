import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:tunezz_pro/domain/data_model/songs.dart';
import 'package:tunezz_pro/domain/db_functions/db_functions.dart';

part 'screen_music_event.dart';
part 'screen_music_state.dart';
part 'screen_music_bloc.freezed.dart';

class ScreenMusicBloc extends Bloc<ScreenMusicEvent, ScreenMusicState> {
  ScreenMusicBloc() : super(ScreenMusicState.initial()) {
    on<_Initialize>((event, emit) {
      return emit(ScreenMusicState(songList: state.songList));
    });
  }
}
