import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:tunezz_pro/domain/data_model/songs.dart';
import 'package:tunezz_pro/domain/db_functions/db_functions.dart';
import 'package:tunezz_pro/presentations/screens/screen_home/screen_home.dart';

class ScreenSplash extends StatelessWidget {
  ScreenSplash({super.key});

  final OnAudioQuery _audioQuery = OnAudioQuery();
  final Box<Songs> songBox = getSongBox();
  final Box<List> playlistBox = getPlaylistBox();
  final List<SongModel> sortedSongs = [];
  final List<Songs> favSongs = [];
  final List<Songs> recentSongs = [];
  final List<Songs> mostPlayedSongs = [];

  Future<void> fetchSongs() async {
    List<SongModel> deviceSongs = [];
    await Permission.storage.request();
    deviceSongs = await _audioQuery.querySongs(
      sortType: SongSortType.TITLE,
      orderType: OrderType.DESC_OR_GREATER,
      uriType: UriType.EXTERNAL,
      ignoreCase: true,
    );
    for (var song in deviceSongs) {
      if (song.fileExtension == 'mp3' ||
          song.fileExtension == 'AAC' ||
          song.fileExtension == 'FLAC' ||
          song.fileExtension == 'WAV') {
        sortedSongs.add(song);
      }
    }
    for (var audio in sortedSongs) {
      final song = Songs(
          id: audio.id.toString(),
          title: audio.displayNameWOExt,
          artist: audio.artist!,
          songPath: audio.uri!);
      await songBox.put(audio.id, song);
    }
    //create a Favorite List if it is not created
    getFavSongs();
    //create recently played key if it is not created
    getRecentSong();
    //create most played key if it is not created
    getMostplayedSong();
  }

  void initState(context) {
    fetchSongs();
    gotoScreenHome(context);
  }

  @override
  Widget build(BuildContext context) {
    initState(context);
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: TextLiquidFill(
          text: 'tunezz',
          waveColor: const Color.fromARGB(227, 18, 179, 219),
          boxBackgroundColor: Colors.black,
          textStyle: TextStyle(
            fontSize: width * 0.23,
            fontFamily: "Alegreya Sans",
          ),
        ),
      ),
    );
  }

  Future getFavSongs() async {
    if (!playlistBox.keys.contains('Favorites')) {
      await playlistBox.put('Favorites', favSongs);
    }
  }

  Future getRecentSong() async {
    if (!playlistBox.keys.contains('Recents')) {
      await playlistBox.put('Recents', recentSongs);
    }
  }

  Future getMostplayedSong() async {
    if (!playlistBox.keys.contains('MostPlayed')) {
      await playlistBox.put('MostPlayed', mostPlayedSongs);
    }
  }

  Future<void> gotoScreenHome(context) async {
    await Future.delayed(const Duration(seconds: 5));
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => ScreenHome(),
      ),
    );
  }
}
