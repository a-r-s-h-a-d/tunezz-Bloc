import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:tunezz_pro/constants/color_palette/background_colors.dart';
import 'package:tunezz_pro/domain/data_model/songs.dart';
import 'package:tunezz_pro/domain/db_functions/db_functions.dart';
import 'package:tunezz_pro/presentations/widgets/music_list_tile.dart';

class ScreenFavorites extends StatefulWidget {
  const ScreenFavorites({super.key});

  @override
  State<ScreenFavorites> createState() => _ScreenFavoritesState();
}

class _ScreenFavoritesState extends State<ScreenFavorites> {
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
          child: ValueListenableBuilder(
            valueListenable: playlistBox.listenable(),
            builder:
                (BuildContext context, Box<List> playlistBox, Widget? child) {
              final List<Songs> songList =
                  playlistBox.get('Favorites')!.toList().cast<Songs>();
              return (songList.isEmpty)
                  ? const Center(
                      child: Text(
                        'No Songs Found',
                        style: TextStyle(
                            fontFamily: "acme",
                            color: Colors.white,
                            overflow: TextOverflow.ellipsis,
                            fontSize: 15),
                      ),
                    )
                  : ListView.builder(
                      itemBuilder: (context, index) {
                        return ListTileMusic(
                          audioPlayer: audioPlayer,
                          index: index,
                          songList: songList,
                        );
                      },
                      itemCount: songList.length,
                    );
            },
          ),
        ));
  }
}
