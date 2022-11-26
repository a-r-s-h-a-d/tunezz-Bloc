import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:tunezz_pro/application/playlist_bloc/playlist_bloc_bloc.dart';
import 'package:tunezz_pro/constants/color_palette/background_colors.dart';
import 'package:tunezz_pro/domain/db_functions/db_functions.dart';
import 'package:tunezz_pro/presentations/widgets/view_add_playlist_song.dart';

import '../../../application/music_bloc/screen_music_bloc.dart';

class ViewPlaylist extends StatelessWidget {
  ViewPlaylist(
      {super.key, required this.playlistname, required this.audioPlayer});
  final String playlistname;
  final AssetsAudioPlayer audioPlayer;

  final Box<List> playlistBox = getPlaylistBox();

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<PlaylistBlocBloc>(context)
          .add(GetPlaylistSongs(playlistName: playlistname));
    });
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            )),
        title: Text(
          playlistname,
          style: const TextStyle(
            fontFamily: "acme",
            color: Colors.white,
            overflow: TextOverflow.ellipsis,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
          decoration: BoxDecoration(
            gradient: bgColor(),
          ),
          child: BlocBuilder<PlaylistBlocBloc, PlaylistBlocState>(
            builder: (context, state) {
              return ListView.builder(
                itemCount: state.playlistSongList.length,
                itemBuilder: (context, index) {
                  return ViewPlaylistTile(
                    index: index,
                    songList: state.playlistSongList,
                    playlistname: state.playlistName,
                  );
                },
              );
            },
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          BlocProvider.of<PlaylistBlocBloc>(context)
              .add(GetPlaylistListNames());
          showModalBottomSheet(
              context: context,
              builder: (builder) {
                return Container(
                  color: Colors.transparent,
                  height: 350.0,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                        decoration: const BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0))),
                        child: BlocBuilder<ScreenMusicBloc, ScreenMusicState>(
                          builder: (context, state) {
                            return ListView.builder(
                              itemCount: state.songList.length,
                              itemBuilder: (context, index) {
                                return AddSongCurrentPlaylist(
                                  songList: state.songList,
                                  index: index,
                                  playlistname: playlistname,
                                );
                              },
                            );
                          },
                        )),
                  ),
                );
              });
        },
        child: const Icon(Icons.queue_music_rounded),
      ),
    );
  }
}
