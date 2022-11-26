import 'dart:developer';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:tunezz_pro/application/playlist_bloc/playlist_bloc_bloc.dart';
import 'package:tunezz_pro/domain/data_model/songs.dart';
import 'package:tunezz_pro/domain/db_functions/db_functions.dart';
import 'package:tunezz_pro/presentations/widgets/miniplayer_tile.dart';

class ViewPlaylistTile extends StatelessWidget {
  ViewPlaylistTile(
      {required this.index,
      required this.songList,
      required this.playlistname,
      super.key});
  final int index;
  List<Songs> songList;
  final String playlistname;
  final AssetsAudioPlayer audioPlayer = AssetsAudioPlayer.withId('0');
  final List<Audio>? audioList = [];

  @override
  Widget build(BuildContext context) {
    final Box<List> playlistBox = getPlaylistBox();
    final Box<Songs> songBox = getSongBox();
    return InkWell(
      onTap: () {
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
                  songList: songList,
                  index: index,
                ),
              ),
            );
          },
        );
      },
      child: ListTile(
        leading: QueryArtworkWidget(
          id: int.parse(songList[index].id),
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
          songList[index].title,
          style: const TextStyle(
              fontFamily: "acme",
              color: Colors.white,
              overflow: TextOverflow.ellipsis,
              fontSize: 17),
        ),
        subtitle: Text(
          songList[index].artist == "<unknown>"
              ? "Unknown Artist"
              : songList[index].artist,
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
            log('Delete button pressed');

            List<Songs> playlistSongs =
                playlistBox.get(playlistname)!.toList().cast<Songs>();
            List<Songs> allSongs = songBox.values.toList().cast<Songs>();

            Songs song = allSongs.firstWhere(
                (element) => element.id.contains(playlistSongs[index].id));

            playlistSongs.removeWhere(
                (element) => element.id == playlistSongs[index].id);

            await playlistBox.put(playlistname, playlistSongs);
            BlocProvider.of<PlaylistBlocBloc>(context)
                .add(GetPlaylistSongs(playlistName: playlistname));
          },
        ),
      ),
    );
  }
}

//Add songs to the current playlist through Bottomsheet
class AddSongCurrentPlaylist extends StatelessWidget {
  AddSongCurrentPlaylist({
    required this.songList,
    required this.index,
    required this.playlistname,
    super.key,
  });
  final List songList;
  final int index;
  final String playlistname;

  final Box<List> playlistBox = getPlaylistBox();

  @override
  Widget build(BuildContext context) {
    List<Songs> playlistSongsList =
        playlistBox.get(playlistname)!.toList().cast<Songs>();
    Songs currentsong =
        songList.firstWhere((song) => song.id.contains(songList[index].id));
    return ListTile(
      leading: QueryArtworkWidget(
        id: int.parse(songList[index].id),
        type: ArtworkType.AUDIO,
        nullArtworkWidget: const Icon(
          Icons.music_note,
          color: Colors.white,
        ),
      ),
      title: GestureDetector(
        onTap: () {
          if (playlistSongsList
              .where((song) => song.id.contains(currentsong.id))
              .isEmpty) {
            playlistSongsList.add(currentsong);
            playlistBox.put(playlistname, playlistSongsList);
          }
          Navigator.of(context).pop();
          BlocProvider.of<PlaylistBlocBloc>(context)
              .add(GetPlaylistSongs(playlistName: playlistname));
        },
        child: Text(songList[index].title,
            style: const TextStyle(
                fontFamily: "acme",
                color: Colors.white,
                overflow: TextOverflow.ellipsis,
                fontWeight: FontWeight.bold,
                fontSize: 15)),
      ),
    );
  }
}
