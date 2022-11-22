// ignore: import_of_legacy_library_into_null_safe

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:tunezz_pro/constants/color_palette/background_colors.dart';
import 'package:tunezz_pro/functions/dialogbox.dart';
import 'package:tunezz_pro/functions/favorites.dart';
import 'package:tunezz_pro/presentations/widgets/iconbutton.dart';

class NowPlaying extends StatefulWidget {
  const NowPlaying({
    super.key,
    required this.audioPlayer,
    required this.audioList,
    required this.index,
  });
  final AssetsAudioPlayer audioPlayer;
  final List<Audio> audioList;
  final int index;

  @override
  State<NowPlaying> createState() => _NowPlayingState();
}

class _NowPlayingState extends State<NowPlaying> {
  Audio find(List<Audio> source, String fromPath) {
    return source.firstWhere((element) => element.path == fromPath);
  }

  bool shuffle = false;
  bool isRepeat = false;

  void repeat() {
    if (isRepeat == true) {
      widget.audioPlayer.setLoopMode(LoopMode.single);
    } else {
      widget.audioPlayer.setLoopMode(LoopMode.playlist);
    }
    setState(() {
      isRepeat = !isRepeat;
    });
  }

  Widget title(AssetsAudioPlayer audioPlayer) {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.00),
      child: Text(
        audioPlayer.getCurrentAudioTitle,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
          fontFamily: "acme",
          color: Colors.white,
          overflow: TextOverflow.ellipsis,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget artist(AssetsAudioPlayer audioPlayer) {
    return Text(
      audioPlayer.getCurrentAudioArtist,
      overflow: TextOverflow.ellipsis,
      style: const TextStyle(
        fontFamily: "latos",
        color: Colors.white,
        overflow: TextOverflow.ellipsis,
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget myprogresbar(AssetsAudioPlayer audioPlayer) {
    return audioPlayer.builderRealtimePlayingInfos(
        builder: (context, realtimePlayingInfos) {
      return ProgressBar(
        progress: realtimePlayingInfos.currentPosition,
        total: realtimePlayingInfos.duration,
        timeLabelPadding: MediaQuery.of(context).size.height * 0.0,
        timeLabelTextStyle: const TextStyle(color: Colors.grey),
        onSeek: (value) {
          widget.audioPlayer.seek(value);
        },
      );
    });
  }

  soundduration(RealtimePlayingInfos realtimePlayingInfos) {
    return Row(
      children: [Text('${realtimePlayingInfos.currentPosition}')],
    );
  }

  Widget songoptions(AssetsAudioPlayer audioPlayer) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomIconButton(
            size: 35,
            icon: isRepeat ? Icons.repeat_one : Icons.repeat,
            onPressed: () {
              setState(() {
                repeat();
              });
              audioPlayer.toggleLoop();
            }),
        InkWell(
          onDoubleTap: () {},
          child: CustomIconButton(
              size: 35,
              icon: Icons.skip_previous,
              onPressed: () {
                audioPlayer.previous();
              }),
        ),
        PlayerBuilder.isPlaying(
            player: audioPlayer,
            builder: (context, isPlaying) {
              return GestureDetector(
                onTap: () async {
                  await audioPlayer.playOrPause();
                },
                child: Icon(
                  isPlaying ? Icons.pause : Icons.play_circle_outlined,
                  color: Colors.white,
                  size: isPlaying ? 35 : 50,
                ),
              );
            }),
        InkWell(
          onDoubleTap: () {},
          child: CustomIconButton(
              size: 35,
              icon: Icons.skip_next,
              onPressed: () {
                audioPlayer.next();
              }),
        ),
        CustomIconButton(
          icon: audioPlayer.isShuffling.value
              ? Icons.shuffle_on_outlined
              : Icons.shuffle,
          onPressed: () {
            setState(() {
              audioPlayer.toggleShuffle();
            });
          },
          size: 35,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        title: const Text('Now Playing',
            style: TextStyle(
                fontFamily: "acme",
                color: Colors.white,
                overflow: TextOverflow.ellipsis,
                fontSize: 22,
                fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: SafeArea(
        child: widget.audioPlayer.builderCurrent(
          builder: (context, playing) {
            final myAudio =
                find(widget.audioList, playing.audio.assetAudioPath);
            return Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                gradient: nowplayingColor(),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.2),
                        QueryArtworkWidget(
                          id: int.parse(myAudio.metas.id!),
                          type: ArtworkType.AUDIO,
                          artworkHeight:
                              MediaQuery.of(context).size.height * 0.3,
                          artworkWidth: MediaQuery.of(context).size.width * 0.6,
                          artworkFit: BoxFit.fill,
                          nullArtworkWidget: Icon(
                            Icons.music_note,
                            color: Colors.white,
                            size: MediaQuery.of(context).size.height * 0.3,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: ListTile(
                            leading: IconButton(
                                icon: Icon(
                                  FavFunction.isFav(
                                      id: myAudio.metas.id.toString()),
                                  size: 40,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  FavFunction.addtoFavorites(
                                      context: context,
                                      id: myAudio.metas.id.toString());
                                  setState(() {
                                    FavFunction.isFav(
                                        id: myAudio.metas.id.toString());
                                  });
                                }),
                            title: title(widget.audioPlayer),
                            subtitle: artist(widget.audioPlayer),
                            trailing: IconButton(
                              onPressed: () {
                                showAddtoplaylistBox(
                                    context, myAudio.metas.id.toString());
                              },
                              icon: const Icon(Icons.add_box_outlined),
                              iconSize: 35,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.height * 0.04,
                          right: MediaQuery.of(context).size.height * 0.04,
                          top: MediaQuery.of(context).size.height * 0.02),
                      child: myprogresbar(widget.audioPlayer),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.height * 0.03,
                        right: MediaQuery.of(context).size.height * 0.03,
                        top: MediaQuery.of(context).size.height * 0.04,
                      ),
                      child: songoptions(widget.audioPlayer),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
