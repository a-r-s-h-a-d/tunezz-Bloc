import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:tunezz_pro/domain/data_model/songs.dart';
import 'package:tunezz_pro/domain/db_functions/db_functions.dart';
import 'package:tunezz_pro/presentations/widgets/music_list_tile.dart';

class Music extends StatelessWidget {
  Music({
    required this.audioPlayer,
    super.key,
  });
  final AssetsAudioPlayer audioPlayer;

  final Box<Songs> songBox = getSongBox();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 70),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Expanded(
          child: ValueListenableBuilder(
            valueListenable: songBox.listenable(),
            builder: (BuildContext context, Box<Songs> songBox, Widget? child) {
              final List<Songs> songList =
                  songBox.values.toList().cast<Songs>();
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
                      itemBuilder: (context, index) => ListTileMusic(
                        audioPlayer: audioPlayer,
                        songList: songList,
                        index: index,
                      ),
                      itemCount: songList.length,
                    );
            },
          ),
        ),
      ]),
    );
  }
}
