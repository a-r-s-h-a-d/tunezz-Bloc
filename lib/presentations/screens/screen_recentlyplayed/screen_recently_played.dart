import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:tunezz_pro/constants/color_palette/background_colors.dart';
import 'package:tunezz_pro/domain/data_model/songs.dart';
import 'package:tunezz_pro/domain/db_functions/db_functions.dart';
import 'package:tunezz_pro/functions/recents.dart';
import 'package:tunezz_pro/presentations/widgets/music_list_tile.dart';

class RecentlyPlayed extends StatefulWidget {
  const RecentlyPlayed({
    super.key,
    required this.audioPlayer,
  });
  final AssetsAudioPlayer audioPlayer;

  @override
  State<RecentlyPlayed> createState() => _RecentlyPlayedState();
}

class _RecentlyPlayedState extends State<RecentlyPlayed> {
  Box<List> playlistBox = getPlaylistBox();
  Box<Songs> songBox = getSongBox();
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
        title: const Text('Recently Played',
            style: TextStyle(
                fontFamily: "acme",
                color: Colors.white,
                overflow: TextOverflow.ellipsis,
                fontSize: 20)),
        actions: [
          IconButton(
              onPressed: () {
                Recents.removefromrecentSongsList();
              },
              icon: const Icon(Icons.auto_delete)),
        ],
      ),
      body: Container(
          decoration: BoxDecoration(
            gradient: bgColor(),
          ),
          child: ValueListenableBuilder(
            valueListenable: playlistBox.listenable(),
            builder: (
              BuildContext context,
              Box<List> value,
              Widget? child,
            ) {
              List<Songs> songList =
                  playlistBox.get('Recents')!.toList().cast<Songs>();
              return (songList.isEmpty)
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
                      itemCount: songList.length,
                      itemBuilder: (context, index) {
                        return ListTileMusic(
                          songList: songList,
                          index: index,
                          audioPlayer: widget.audioPlayer,
                        );
                      },
                    );
            },
          )),
    );
  }
}
