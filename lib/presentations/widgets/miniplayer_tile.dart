import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marquee_widget/marquee_widget.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:tunezz_pro/application/screen_recent/screen_recent_bloc.dart';
import 'package:tunezz_pro/domain/data_model/songs.dart';
import 'package:tunezz_pro/functions/recents.dart';
import 'package:tunezz_pro/presentations/screens/screen_nowplaying/screen_nowplaying.dart';

class ListTileMiniplayer extends StatelessWidget {
  ListTileMiniplayer({
    required this.audioPlayer,
    required this.songList,
    required this.index,
    super.key,
  });
  final AssetsAudioPlayer audioPlayer;
  final List<Songs> songList;
  final int index;
  final List<Audio> audioList = [];

  void converturitoaudio() {
    for (var song in songList) {
      audioList.add(
        Audio.file(
          song.songPath,
          metas: Metas(
            id: song.id.toString(),
            title: song.title,
            artist: song.artist,
          ),
        ),
      );
    }
  }

  playMusic() {
    audioPlayer.open(
      Playlist(
        audios: audioList,
        startIndex: index,
      ),
      showNotification: true,
      loopMode: LoopMode.playlist,
      autoStart: true,
      playInBackground: PlayInBackground.enabled,
      audioFocusStrategy: const AudioFocusStrategy.request(
        resumeAfterInterruption: true,
        resumeOthersPlayersAfterDone: true,
      ),
      headPhoneStrategy: HeadPhoneStrategy.pauseOnUnplug,
    );
  }

  Audio find(List<Audio> source, String fromPath) {
    return source.firstWhere((element) => element.path == fromPath);
  }

  void initState() {
    converturitoaudio();
    playMusic();
  }

  @override
  Widget build(BuildContext context) {
    initState();
    return audioPlayer.builderCurrent(
      builder: (BuildContext context, Playing playing) {
        Audio myAudio = find(audioList, playing.audio.assetAudioPath);
        BlocProvider.of<ScreenRecentBloc>(context).add(const GetRecentList());
        Recents.addtoRecent(
          context: context,
          id: int.parse(myAudio.metas.id!).toString(),
        );
        return Center(
          child: ListTile(
            leading: QueryArtworkWidget(
              id: int.parse(myAudio.metas.id!),
              type: ArtworkType.AUDIO,
              nullArtworkWidget: const Icon(
                Icons.music_note,
                color: Colors.white,
              ),
            ),
            title: Marquee(
              pauseDuration: const Duration(milliseconds: 100),
              direction: Axis.horizontal,
              textDirection: TextDirection.ltr,
              autoRepeat: true,
              child: Text(myAudio.metas.title!,
                  style: const TextStyle(
                      fontFamily: "acme",
                      color: Colors.white,
                      overflow: TextOverflow.ellipsis,
                      fontSize: 14)),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                //previous
                InkWell(
                  onDoubleTap: () {},
                  child: IconButton(
                    onPressed: () async {
                      await audioPlayer.previous();
                    },
                    icon: const Icon(Icons.skip_previous),
                    color: Colors.white,
                  ),
                ),
                PlayerBuilder.isPlaying(
                    player: audioPlayer,
                    builder: (context, isPlaying) {
                      return GestureDetector(
                        onTap: () async {
                          await audioPlayer.playOrPause();
                        },
                        child: Icon(
                          isPlaying ? Icons.pause : Icons.play_arrow,
                          color: Colors.white,
                          size: 30,
                        ),
                      );
                    }),
                //next
                InkWell(
                  onDoubleTap: () {},
                  child: IconButton(
                    onPressed: () async {
                      await audioPlayer.next(
                          //stopIfLast: true
                          );
                    },
                    icon: const Icon(Icons.skip_next),
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => NowPlaying(
                  audioPlayer: audioPlayer,
                  audioList: audioList,
                  index: index,
                ),
              ));
            },
          ),
        );
      },
    );
  }
}
