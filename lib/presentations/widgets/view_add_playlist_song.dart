// ignore_for_file: must_be_immutable, use_build_context_synchronously

import 'dart:developer';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:tunezz_pro/domain/data_model/songs.dart';
import 'package:tunezz_pro/domain/db_functions/db_functions.dart';
import 'package:tunezz_pro/presentations/widgets/miniplayer_tile.dart';

class ViewPlaylistTile extends StatefulWidget {
  const ViewPlaylistTile(
      {required this.index,
      required this.songList,
      //required this.audioPlayer,
      required this.playlistname,
      super.key});
  final int index;
  final List<Songs> songList;
  //final AssetsAudioPlayer audioPlayer;
  final String playlistname;

  @override
  State<ViewPlaylistTile> createState() => _ViewPlaylistTileState();
}

class _ViewPlaylistTileState extends State<ViewPlaylistTile> {
  final AssetsAudioPlayer audioPlayer = AssetsAudioPlayer.withId('0');
  // static final Box<List> playlistBox = getPlaylistBox();
  // static final Box<Songs> songBox = getSongBox();
  List<Audio>? audioList = [];

  // void convertsongtoaudio() {
  //   for (var song in widget.songList) {
  //     audioList!.add(
  //       Audio.file(
  //         song.songPath,
  //         metas: Metas(
  //           id: song.id.toString(),
  //           title: song.title,
  //           artist: song.artist,
  //         ),
  //       ),
  //     );
  //   }
  // }

  @override
  void initState() {
    //convertsongtoaudio();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        log('open from playlist');
        log(widget.songList[widget.index].title);
        showBottomSheet(
          context: context,
          builder: (context) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 40.0, vertical: 2),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.08,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.blueGrey,
                ),
                child: ListTileMiniplayer(
                  audioPlayer: audioPlayer,
                  songList: widget.songList,
                  index: widget.index,
                ),
              ),
            );
          },
        );
      },
      child: ListTile(
        leading: QueryArtworkWidget(
          id: int.parse(widget.songList[widget.index].id),
          type: ArtworkType.AUDIO,
          nullArtworkWidget: Container(
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Colors.blueGrey),
            child: Icon(
              Icons.music_note,
              color: Colors.white,
              size: MediaQuery.of(context).size.height * 0.06,
            ),
          ),
        ),
        title: Text(
          widget.songList[widget.index].title,
          style: const TextStyle(
              fontFamily: "acme",
              color: Colors.white,
              overflow: TextOverflow.ellipsis,
              fontSize: 17),
        ),
        subtitle: Text(
          widget.songList[widget.index].artist == "<unknown>"
              ? "Unknown Artist"
              : widget.songList[widget.index].artist,
          style: const TextStyle(
              fontFamily: "lato",
              color: Colors.white,
              overflow: TextOverflow.ellipsis,
              fontSize: 14),
        ),
        trailing: IconButton(
          icon: const Icon(
            Icons.delete_rounded,
            color: Colors.red,
          ),
          onPressed: () async {
            //audioPlayer.stop();

            widget.songList.removeWhere((song) =>
                song.id == widget.songList[widget.index].id.toString());
            await getPlaylistBox().put(widget.playlistname, widget.songList);

            var snackdemo = SnackBar(
              content: Text(
                  '${audioList![widget.index].metas.title} removed from playlist'),
              backgroundColor: Colors.red,
              duration: const Duration(seconds: 1),
              elevation: 10,
            );
            ScaffoldMessenger.of(context).showSnackBar(snackdemo);
          },
        ),
      ),
    );
  }
}

//Add songs to the current playlist through Bottomsheet
class AddSongCurrentPlaylist extends StatefulWidget {
  const AddSongCurrentPlaylist({
    required this.songList,
    required this.index,
    required this.playlistname,
    super.key,
  });
  final List songList;
  final int index;
  final String playlistname;

  @override
  State<AddSongCurrentPlaylist> createState() => _AddSongCurrentPlaylistState();
}

class _AddSongCurrentPlaylistState extends State<AddSongCurrentPlaylist> {
  bool toggle = false;
  Box<List> playlistBox = getPlaylistBox();

  @override
  Widget build(BuildContext context) {
    List<Songs> playlistSongsList =
        playlistBox.get(widget.playlistname)!.toList().cast<Songs>();
    Songs currentsong = widget.songList.firstWhere(
        (song) => song.id.contains(widget.songList[widget.index].id));
    return ListTile(
      leading: QueryArtworkWidget(
        id: int.parse(widget.songList[widget.index].id),
        type: ArtworkType.AUDIO,
        nullArtworkWidget: const Icon(
          Icons.music_note,
          color: Colors.white,
        ),
      ),
      title: Text(widget.songList[widget.index].title,
          style: const TextStyle(
              fontFamily: "acme",
              color: Colors.white,
              overflow: TextOverflow.ellipsis,
              fontWeight: FontWeight.bold,
              fontSize: 15)),
      trailing: IconButton(
          icon: playlistSongsList
                  .where((song) => song.id.contains(currentsong.id))
                  .isNotEmpty
              ? const Icon(
                  Icons.remove_circle_outline,
                  color: Colors.red,
                  size: 30,
                )
              : const Icon(
                  Icons.add_circle_outline,
                  color: Colors.green,
                  size: 30,
                ),
          onPressed: () {
            setState(() {
              // Here we changing the icon.
              List<Songs> playlistSongsList =
                  playlistBox.get(widget.playlistname)!.toList().cast<Songs>();
              Songs currentsong = widget.songList.firstWhere(
                  (song) => song.id.contains(widget.songList[widget.index].id));
              if (playlistSongsList
                  .where((song) => song.id.contains(currentsong.id))
                  .isEmpty) {
                playlistSongsList.add(currentsong);
                playlistBox.put(widget.playlistname, playlistSongsList);
              } else {
                playlistSongsList
                    .removeWhere((song) => song.id.contains(currentsong.id));
                playlistBox.put(widget.playlistname, playlistSongsList);
              }
            });
          }),
    );
  }
}
