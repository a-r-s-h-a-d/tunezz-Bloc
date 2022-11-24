import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:tunezz_pro/application/screen_most/screen_most_bloc.dart';
import 'package:tunezz_pro/constants/color_palette/background_colors.dart';
import 'package:tunezz_pro/domain/data_model/songs.dart';
import 'package:tunezz_pro/domain/db_functions/db_functions.dart';
import 'package:tunezz_pro/functions/mostplayed.dart';
import 'package:tunezz_pro/presentations/widgets/music_list_tile.dart';

class MostlyPlayed extends StatelessWidget {
  MostlyPlayed({
    required this.audioPlayer,
    super.key,
  });
  final AssetsAudioPlayer audioPlayer;

  final Box<Songs> songBox = getSongBox();
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
          'Most Played',
          style: TextStyle(
              fontFamily: "acme",
              color: Colors.white,
              overflow: TextOverflow.ellipsis,
              fontSize: 20),
        ),
        actions: [
          IconButton(
              onPressed: () {
                BlocProvider.of<ScreenMostBloc>(context)
                    .add(const GetMostSongList());
                MostPlayed.removefromMostplayedList();
              },
              icon: const Icon(Icons.auto_delete)),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: bgColor(),
        ),
        child: BlocBuilder<ScreenMostBloc, ScreenMostState>(
          builder: (context, state) {
            return state.mostSongList.isEmpty
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
                    itemCount: state.mostSongList.length,
                    itemBuilder: (context, index) {
                      return ListTileMusic(
                        songList: state.mostSongList,
                        index: index,
                        audioPlayer: audioPlayer,
                      );
                    },
                  );
          },
        ),
      ),
    );
  }
}
