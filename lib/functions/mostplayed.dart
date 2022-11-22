import 'package:hive_flutter/hive_flutter.dart';
import 'package:tunezz_pro/domain/data_model/songs.dart';
import 'package:tunezz_pro/domain/db_functions/db_functions.dart';

class MostPlayed {
  static final Box<Songs> songBox = getSongBox();
  static final Box<List> playlistBox = getPlaylistBox();

  static addtoMostPlayed({required context, required String id}) async {
    final deviceSongs = songBox.values.toList().cast<Songs>();
    final mostplayedList =
        playlistBox.get('MostPlayed')!.toList().cast<Songs>();
    final mostplayedSongs =
        deviceSongs.firstWhere((song) => song.id.contains(id));
    if (mostplayedList.length >= 10) {
      mostplayedList.removeLast();
    }
    if (mostplayedSongs.playedCount! >= 3) {
      if (mostplayedList.where((song) => song.id.contains(id)).isEmpty) {
        mostplayedList.insert(0, mostplayedSongs);
        await playlistBox.put('MostPlayed', mostplayedList);
      } else {
        mostplayedList.removeWhere((song) => song.id.contains(id));
        mostplayedList.insert(0, mostplayedSongs);
        await playlistBox.put('MostPlayed', mostplayedList);
      }
    }
  }

  static removefromMostplayedList() async {
    final mostplayedList =
        playlistBox.get('MostPlayed')!.toList().cast<Songs>();
    mostplayedList.clear();
    await playlistBox.put('MostPlayed', mostplayedList);
  }
}
