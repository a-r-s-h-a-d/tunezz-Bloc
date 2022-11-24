import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tunezz_pro/application/music_bloc/screen_music_bloc.dart';
import 'package:tunezz_pro/presentations/widgets/music_list_tile.dart';

class Music extends StatelessWidget {
  const Music({
    required this.audioPlayer,
    super.key,
  });
  final AssetsAudioPlayer audioPlayer;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 70),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: BlocBuilder<ScreenMusicBloc, ScreenMusicState>(
            builder: (context, state) {
              return state.songList.isEmpty
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
                        songList: state.songList,
                        index: index,
                      ),
                      itemCount: state.songList.length,
                    );
            },
          )),
        ],
      ),
    );
  }
}
