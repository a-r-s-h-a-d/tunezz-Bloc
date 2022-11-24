import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:tunezz_pro/application/screen_favorite/screen_favorite_bloc.dart';
import 'package:tunezz_pro/constants/color_palette/background_colors.dart';
import 'package:tunezz_pro/domain/db_functions/db_functions.dart';
import 'package:tunezz_pro/presentations/widgets/music_list_tile.dart';

class ScreenFavorites extends StatelessWidget {
  ScreenFavorites({super.key});

  final AssetsAudioPlayer audioPlayer = AssetsAudioPlayer.withId('0');
  final Box<List> playlistBox = getPlaylistBox();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new),
            onPressed: () => Navigator.of(context).pop(),
          ),
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: const Text(
            'Favorites',
            style: TextStyle(
                fontFamily: "acme",
                color: Colors.white,
                overflow: TextOverflow.ellipsis,
                fontSize: 20),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: bgColor(),
          ),
          child: BlocBuilder<ScreenFavoriteBloc, ScreenFavoriteState>(
            builder: (context, state) {
              return state.favSongList.isEmpty
                  ? const Center(
                      child: Text(
                        'No Songs Found',
                        style: TextStyle(
                          fontFamily: "acme",
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    )
                  : ListView.builder(
                      itemCount: state.favSongListLength,
                      itemBuilder: (context, index) {
                        return ListTileMusic(
                          songList: state.favSongList,
                          index: index,
                          audioPlayer: audioPlayer,
                        );
                      },
                    );
            },
          ),
        ));
  }
}
