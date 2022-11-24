// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:tunezz_pro/domain/data_model/songs.dart';
import 'package:tunezz_pro/domain/db_functions/db_functions.dart';

class FavFunction {
  static Box<Songs> songBox = getSongBox();
  static Box<List> playlistBox = getPlaylistBox();

  static addtoFavorites({required BuildContext context, required String id}) {
    List<Songs> sortedSongs = songBox.values.toList().cast();
    List<Songs> favSongList =
        playlistBox.get('Favorites')!.toList().cast<Songs>();
    Songs favSong = sortedSongs.firstWhere((song) => song.id.contains(id));
    if (favSongList.where((song) => song.id == favSong.id).isEmpty) {
      favSongList.add(favSong);
      playlistBox.put('Favorites', favSongList);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('${favSong.title} added to favorites'),
          backgroundColor: Colors.green,
          duration: const Duration(seconds: 1),
          elevation: 10,
        ),
      );
    } else {
      favSongList.removeWhere((song) => song.id == favSong.id);
      playlistBox.put('Favorites', favSongList);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('${favSong.title} removed from favorites'),
        backgroundColor: Colors.red,
        duration: const Duration(seconds: 1),
        elevation: 10,
      ));
    }
  }

  static IconData isFav({required String id}) {
    List<Songs> sortedSongs = songBox.values.toList().cast();
    List<Songs> favSongList =
        playlistBox.get('Favorites')!.toList().cast<Songs>();
    Songs favSong = sortedSongs.firstWhere((song) => song.id.contains(id));
    return favSongList.where((song) => song.id == favSong.id).isEmpty
        ? Icons.favorite_outline
        : Icons.favorite_rounded;
  }
}
